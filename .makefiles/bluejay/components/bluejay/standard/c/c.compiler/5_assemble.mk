#-------------------------------------------------------------------------------
# File:
#
# Description:
#
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
define c.compiler.stage_5
   $(call function,c.assemble_flags)
endef

#-------------------------------------------------------------------------------
define c.assemble_flags
   $(warning c.assemble_flags not defined by the toolchain)
endef
