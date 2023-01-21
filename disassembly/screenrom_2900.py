from commands import *

from screenrom_common import *

load(0xa000, "screenrom_2900.rom", "6502")

add_screenrom_common()

label(0x2900, "workspace_ram")
label(0x2903, "var_inv_screen")
label(0x2904, "var_inv_charset")
label(0x2905, "var_tmp")
label(0x2908, "font_ram")
label(0x2c01, "font_end")


go()
