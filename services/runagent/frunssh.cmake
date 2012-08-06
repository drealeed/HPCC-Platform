################################################################################
#    Copyright (C) 2011 HPCC Systems.
#
#    All rights reserved. This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as
#    published by the Free Software Foundation, either version 3 of the
#    License, or (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

# Component: frunssh 

#####################################################
# Description:
# ------------
#    Cmake Input File for frunssh
#####################################################


project( frunssh ) 

set (    SRCS 
         frunssh.cpp 
         ../../common/remote/rmtssh.cpp 
    )

include_directories ( 
         ./../../system/include 
         ./../../system/jlib 
         ./../../common/remote 
    )

ADD_DEFINITIONS ( -D_CONSOLE -DRMTSSH_LOCAL)

HPCC_ADD_EXECUTABLE ( frunssh ${SRCS} )
install ( TARGETS frunssh RUNTIME DESTINATION ${EXEC_DIR} )
target_link_libraries ( frunssh 
         jlib 
    )


