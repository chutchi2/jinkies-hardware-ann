#-------------------------------------------------------------------------------
# File:
#
# Description:
#
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# Archiver
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
define std.archiver.assemble_flags
   FINAL_AR_FLAGS = $$(strip $$(AR_FLAGS))
endef

#-------------------------------------------------------------------------------
define std.archiver.archive_recipe
   $(QUIET)$(ARCHIVER) $(FINAL_AR_FLAGS) $@ $^
endef
