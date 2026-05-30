//
// Copyright (c) 2026, Dmitry Krutskikh
//
// Redistribution and use in source and binary forms, with or without  modification, are permitted provided that the
// following conditions are met:
//
// 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following
// disclaimer.
//
// 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the
// following disclaimer in the documentation and / or other materials provided with the distribution.
//
// 3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote
// products derived from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
// INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
// SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
// WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//

#include <cstdio>

#ifdef __GBA__

#include <gba_console.h>
#include <gba_interrupt.h>
#include <gba_systemcalls.h>

int main() {
  irqInit();
  irqEnable(IRQ_VBLANK);

  consoleDemoInit();

  iprintf("\x1b[9;7HKwik Snax Redux!\n");

  while (1)
    VBlankIntrWait();
}

#endif // __GBA__

#ifdef __NDS__

#include <nds.h>

int main() {
  consoleDemoInit();

  iprintf("\x1b[11;8HKwik Snax Redux!\n");

  while (pmMainLoop())
    swiWaitForVBlank();

  return 0;
}

#endif // __NDS__

#ifdef __3DS__

#include <3DS.h>

int main() {
  gfxInitDefault();

  consoleInit(GFX_BOTTOM, NULL);

  iprintf("\x1b[14;12HKwik Snax Redux!\n");

  // Main loop
  while (aptMainLoop()) {
    gfxFlushBuffers();
    gfxSwapBuffers();

    gspWaitForVBlank();
  }

  gfxExit();
  return 0;
}

#endif // __3DS__
