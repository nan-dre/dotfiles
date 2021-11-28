define init-pwndbg
source /usr/share/pwndbg/gdbinit.py
end
document init-pwndbg
Initializes PwnDBG
end

define init-peda
source /usr/share/peda/peda.py
end
document init-peda
Initializes PEDA
end

define init-gef
source /usr/share/gef/gef.py
end
document init-gef
Initializes GEF
end

set disassembly-flavor intel

