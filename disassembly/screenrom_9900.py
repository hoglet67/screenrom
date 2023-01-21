from commands import *

from screenrom_common import *

load(0xa000, "screenrom_9900.rom", "6502")

add_screenrom_common()

label(0x9900, "workspace_ram")
label(0x9903, "var_inv_screen")
label(0x9904, "var_inv_charset")
label(0x9905, "var_tmp")
label(0x9908, "font_ram")
label(0x9c01, "font_end")

label(0xfb83, "kern_wait_x_vsyncs")

entry(0xad00, "debounce")

move(0x9800, 0xad10, 0x37)
entry(0x9800, "debounce_ram")
entry(0x982a, "rdch_with_delay")
expr(0x9809, "<rdch_with_delay")
expr(0x9810, ">rdch_with_delay")
expr(0x9820, "<rdch_with_delay")
expr(0x9825, ">rdch_with_delay")
label(0x9839, "debounce_delay")
label(0x9837, "old_rdcvec")
expr_label(0x9838, "old_rdcvec+1")

go()
