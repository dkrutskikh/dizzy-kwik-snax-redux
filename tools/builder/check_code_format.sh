#!/bin/bash

#-----------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2026, Dmitry Krutskikh
#
# Redistribution and use in source and binary forms, with or without  modification, are permitted provided that the
# following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following
# disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the
# following disclaimer in the documentation and / or other materials provided with the distribution.
#
# 3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote
# products derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
# INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#-----------------------------------------------------------------------------------------------------------------------

# Script to determine whether the source code in the Pull Request is formatted correctly.
# Exits with a non-zero exit code if formatting is needed.
#
# It is assumed that this script is called from the project root directory.

set -e -o pipefail

# Get all modified files in the current branch compared to base branch
FILES_TO_CHECK=$(git diff --name-only "$(git merge-base origin/main HEAD)"..HEAD \
                                            | (grep -E ".*\.(cpp|cc|c\+\+|cxx|c|h|hpp|inl|java|js)$" || true) \
                                            | (grep -v "^src/thirdparty/.*/.*" || true))

if [[ -z "$FILES_TO_CHECK" ]]; then
  echo "There is no source code to check the formatting."
  exit 0
fi

echo "Checking formatting for files in branch..."
echo "$FILES_TO_CHECK"

FORMAT_ERRORS=0

while IFS= read -r file; do
  if [ ! -f "$file" ]; then
    continue  # File may have been deleted
  fi

  # Check if the file requires formatting
  if ! clang-format --dry-run -Werror -style=file "$file" 2>/dev/null; then
    echo "Formatting needed: $file"
    FORMAT_ERRORS=$((FORMAT_ERRORS + 1))
  fi
done <<< "$FILES_TO_CHECK"

if [ $FORMAT_ERRORS -eq 0 ]; then
  echo "All source code is formatted correctly."
  exit 0
else
  echo "Found $FORMAT_ERRORS file(s) with formatting errors!"
  exit 1
fi
