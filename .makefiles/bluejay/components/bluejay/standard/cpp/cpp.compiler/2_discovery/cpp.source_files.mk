#-------------------------------------------------------------------------------
# File:
#
# Description:
#
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# Arguments:
# $1 - directory or list of directories
# $2 - exclusion list
#
# Returns:
# List of header files found in $1
#-------------------------------------------------------------------------------
define cpp.find_source_files
$(filter-out\
   $(addprefix %,$(2)),\
      $(call find_files,$(1),$(CPP_FILE_EXTS)))
endef

#-------------------------------------------------------------------------------
# Arguments:
# $1 - package
# $2 - directory or list of directories
# $3 - exclusion list
#-------------------------------------------------------------------------------
define cpp.discover_source_files
   $(call function,cpp.add_source_files,\
      $(1),\
      $(call cpp.find_source_files,$(2),$(3)))
endef

#-------------------------------------------------------------------------------
# Arguments:
# $1 - directory
# $2 - exclusion list
#
# Returns:
# List of header files found in $1
#-------------------------------------------------------------------------------
define cpp.find_source_files_ex
$(filter-out\
   $(addprefix %,$(2)),\
      $(call find_files_ex,$(1),$(CPP_FILE_EXTS)))
endef

#-------------------------------------------------------------------------------
# Arguments:
# $1 - package
# $2 - directory
# $3 - exclusion list
#-------------------------------------------------------------------------------
define cpp.discover_source_files_ex
   $(call function,cpp.add_source_files,\
      $(1),\
      $(call cpp.find_source_files_ex,$(2),$(3)))
endef
