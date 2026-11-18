if cond=(eval(db_exists("VI_CRT_Demo_RT")))
  return
end
!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = mm  &
   angle = deg  &
   force = newton  &
   mass = kg  &
   time = sec
!
defaults units  &
   coordinate_system_type = cartesian  &
   orientation_type = body313
!
!------------------------ Default Attributes for Model ------------------------!
!
!
defaults attributes  &
   inheritance = bottom_up  &
   icon_visibility = off  &
   grid_visibility = off  &
   size_of_icons = 50.0  &
   spacing_for_grid = 50.0
!
!------------------------------ Adams/View Model ------------------------------!
!
!
model create  &
   model_name = VI_CRT_Demo_RT  &
   title = "ADAMS/Car template"
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create string  &
   string_name = .VI_CRT_Demo_RT.minor_role_string  &
   string = ""
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .VI_CRT_Demo_RT.steel  &
   density = 7.801E-006  &
   youngs_modulus = 2.07E+005  &
   poissons_ratio = 0.29
!
!-------------------------------- Rigid Parts ---------------------------------!
!
! Create parts and their dependent markers and graphics
!
!----------------------------------- ground -----------------------------------!
!
!
! ****** Ground Part ******
!
defaults model  &
   part_name = ground
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ground.origo  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ground.shell_Ref  &
   location = 0.0, 0.0, -345.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
!-------------------------------- ges_chassis ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
part create rigid_body name_and_position  &
   part_name = .VI_CRT_Demo_RT.ges_chassis  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ges_chassis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.cm  &
   location = 1500.0, 0.0, 300.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.inertia_frame  &
   location = 1500.0, 0.0, 300.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.fwl  &
   location = 0.0, 880.0, 340.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.rwl  &
   location = -2920.0, 870.0, 360.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.rwr  &
   location = -2920.0, -870.0, 360.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.fwr  &
   location = 0.0, -880.0, 340.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_755  &
   adams_id = 755  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_755  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_756  &
   adams_id = 756  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_756  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_757  &
   adams_id = 757  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_757  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_758  &
   adams_id = 758  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_758  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_759  &
   adams_id = 759  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_759  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_760  &
   adams_id = 760  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_760  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_761  &
   adams_id = 761  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_761  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_762  &
   adams_id = 762  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_762  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_763  &
   adams_id = 763  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_763  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_764  &
   adams_id = 764  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_764  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_765  &
   adams_id = 765  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_765  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_766  &
   adams_id = 766  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_766  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_767  &
   adams_id = 767  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_767  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_768  &
   adams_id = 768  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_768  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_769  &
   adams_id = 769  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_769  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_770  &
   adams_id = 770  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_770  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_771  &
   adams_id = 771  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_771  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_772  &
   adams_id = 772  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_772  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_773  &
   adams_id = 773  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_773  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_774  &
   adams_id = 774  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_774  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_775  &
   adams_id = 775  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_775  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_776  &
   adams_id = 776  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_776  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_777  &
   adams_id = 777  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_777  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_778  &
   adams_id = 778  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_778  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_779  &
   adams_id = 779  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_779  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_780  &
   adams_id = 780  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_780  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_781  &
   adams_id = 781  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_781  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_782  &
   adams_id = 782  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_782  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_783  &
   adams_id = 783  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_783  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_784  &
   adams_id = 784  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_784  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_785  &
   adams_id = 785  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_785  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_786  &
   adams_id = 786  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_786  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_787  &
   adams_id = 787  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_787  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_788  &
   adams_id = 788  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_788  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_789  &
   adams_id = 789  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_789  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_790  &
   adams_id = 790  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_790  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_791  &
   adams_id = 791  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_791  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_792  &
   adams_id = 792  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_792  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_793  &
   adams_id = 793  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_793  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_794  &
   adams_id = 794  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_794  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_795  &
   adams_id = 795  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_795  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_796  &
   adams_id = 796  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_796  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_797  &
   adams_id = 797  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_797  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_798  &
   adams_id = 798  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_798  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_799  &
   adams_id = 799  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_799  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_800  &
   adams_id = 800  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_800  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_801  &
   adams_id = 801  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_801  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_802  &
   adams_id = 802  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_802  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_803  &
   adams_id = 803  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_803  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_804  &
   adams_id = 804  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_804  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_805  &
   adams_id = 805  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_805  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_806  &
   adams_id = 806  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_806  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_807  &
   adams_id = 807  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_807  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_808  &
   adams_id = 808  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_808  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_809  &
   adams_id = 809  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_809  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_810  &
   adams_id = 810  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_810  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_811  &
   adams_id = 811  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_811  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_812  &
   adams_id = 812  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_812  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_813  &
   adams_id = 813  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_813  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_814  &
   adams_id = 814  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_814  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_815  &
   adams_id = 815  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_815  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_816  &
   adams_id = 816  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_816  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_817  &
   adams_id = 817  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_817  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_818  &
   adams_id = 818  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_818  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_819  &
   adams_id = 819  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_819  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_820  &
   adams_id = 820  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_820  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_821  &
   adams_id = 821  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_821  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_822  &
   adams_id = 822  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_822  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_823  &
   adams_id = 823  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_823  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_824  &
   adams_id = 824  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_824  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_825  &
   adams_id = 825  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_825  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_826  &
   adams_id = 826  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_826  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_827  &
   adams_id = 827  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_827  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_828  &
   adams_id = 828  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_828  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_829  &
   adams_id = 829  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_829  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_830  &
   adams_id = 830  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_830  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_831  &
   adams_id = 831  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_831  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_832  &
   adams_id = 832  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_832  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_833  &
   adams_id = 833  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_833  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_834  &
   adams_id = 834  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_834  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_835  &
   adams_id = 835  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_835  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_836  &
   adams_id = 836  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_836  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_837  &
   adams_id = 837  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_837  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_838  &
   adams_id = 838  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_838  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_839  &
   adams_id = 839  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_839  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_840  &
   adams_id = 840  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_840  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_841  &
   adams_id = 841  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_841  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_842  &
   adams_id = 842  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_842  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_843  &
   adams_id = 843  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_843  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_844  &
   adams_id = 844  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_844  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_845  &
   adams_id = 845  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_845  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_846  &
   adams_id = 846  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_846  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_847  &
   adams_id = 847  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_847  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_848  &
   adams_id = 848  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_848  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_849  &
   adams_id = 849  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_849  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_850  &
   adams_id = 850  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_850  &
   visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_851  &
   adams_id = 851  &
   location = 1514.3844479648, 1581.5669272682, -30.3576166035  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.MARKER_851  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .VI_CRT_Demo_RT.ges_chassis  &
   mass = 1.0  &
   center_of_mass_marker = .VI_CRT_Demo_RT.ges_chassis.cm  &
   inertia_marker = .VI_CRT_Demo_RT.ges_chassis.inertia_frame  &
   ixx = 1.0  &
   iyy = 1.0  &
   izz = 1.0  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_1  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_755  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_1.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_1  &
   color = Navy
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_2  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_756  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_2.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_2  &
   color = Navy
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_3  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_757  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_3.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_3  &
   color = Navy
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_4  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_758  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_4.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_4  &
   color = Navy
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_5  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_759  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_5.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_5  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_6  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_760  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_6.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_6  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_7  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_761  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_7.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_7  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_8  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_762  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_8.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_8  &
   color = BLACK
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_9  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_763  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_9.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_9  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_10  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_764  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_10.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_10  &
   color = BLACK
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_11  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_765  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_11.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_11  &
   color = BLACK
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_12  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_766  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_12.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_12  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_13  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_767  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_13.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_13  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_14  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_768  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_14.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_14  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_15  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_769  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_15.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_15  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_16  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_770  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_16.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_16  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_17  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_771  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_17.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_17  &
   color = YELLOW
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_18  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_772  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_18.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_18  &
   color = YELLOW
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_19  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_773  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_19.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_19  &
   color = Orange
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_20  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_774  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_20.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_20  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_21  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_775  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_21.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_21  &
   color = Orange
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_22  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_776  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_22.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_22  &
   color = YELLOW
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_23  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_777  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_23.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_23  &
   color = YELLOW
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_24  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_778  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_24.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_24  &
   color = BLUE  &
   transparency = 70
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_25  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_779  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_25.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_25  &
   color = Orange
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_26  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_780  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_26.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_26  &
   color = RED
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_27  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_781  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_27.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_27  &
   color = YELLOW
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_28  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_782  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_28.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_28  &
   color = YELLOW
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_29  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_783  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_29.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_29  &
   color = BLACK
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_30  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_784  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_30.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_30  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_31  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_785  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_31.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_31  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_32  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_786  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_32.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_32  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_33  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_787  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_33.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_33  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_34  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_788  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_34.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_34  &
   color = BLACK
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_35  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_789  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_35.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_35  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_36  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_790  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_36.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_36  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_37  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_791  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_37.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_37  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_38  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_792  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_38.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_38  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_39  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_793  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_39.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_39  &
   color = BLUE  &
   transparency = 70
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_40  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_794  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_40.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_40  &
   color = YELLOW
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_41  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_795  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_41.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_41  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_42  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_796  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_42.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_42  &
   color = YELLOW
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_43  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_797  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_43.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_43  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_44  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_798  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_44.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_44  &
   color = Gray
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_45  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_799  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_45.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_45  &
   color = BLACK  &
   transparency = 72
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_46  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_800  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_46.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_46  &
   color = Gray
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_47  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_801  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_47.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_47  &
   color = Gray
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_48  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_802  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_48.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_48  &
   color = Gray
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_49  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_803  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_49.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_49  &
   color = Orange
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_50  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_804  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_50.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_50  &
   color = Gray
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_51  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_805  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_51.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_51  &
   color = YELLOW
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_52  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_806  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_52.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_52  &
   color = YELLOW
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_53  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_807  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_53.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_53  &
   color = Orange
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_54  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_808  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_54.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_54  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_55  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_809  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_55.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_55  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_56  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_810  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_56.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_56  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_57  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_811  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_57.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_57  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_58  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_812  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_58.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_58  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_59  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_813  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_59.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_59  &
   color = Navy
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_60  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_814  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_60.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_60  &
   color = BLACK  &
   transparency = 20
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_61  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_815  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_61.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_61  &
   color = Navy
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_62  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_816  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_62.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_62  &
   color = BLACK  &
   transparency = 20
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_63  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_817  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_63.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_63  &
   color = Navy
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_64  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_818  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_64.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_64  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_65  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_819  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_65.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_65  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_66  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_820  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_66.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_66  &
   color = BLACK
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_67  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_821  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_67.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_67  &
   color = BLACK
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_68  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_822  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_68.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_68  &
   color = BLACK
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_69  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_823  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_69.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_69  &
   color = BLACK
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_70  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_824  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_70.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_70  &
   color = BLACK
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_71  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_825  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_71.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_71  &
   color = BLACK  &
   transparency = 68
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_72  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_826  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_72.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_72  &
   color = BLACK
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_73  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_827  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_73.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_73  &
   color = BLACK
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_74  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_828  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_74.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_74  &
   color = RED
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_75  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_829  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_75.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_75  &
   color = Orange
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_76  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_830  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_76.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_76  &
   color = RED
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_77  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_831  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_77.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_77  &
   color = Orange
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_78  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_832  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_78.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_78  &
   color = Orange
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_79  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_833  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_79.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_79  &
   color = Orange
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_80  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_834  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_80.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_80  &
   color = RED
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_81  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_835  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_81.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_81  &
   color = Orange
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_82  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_836  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_82.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_82  &
   color = BLACK
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_83  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_837  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_83.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_83  &
   color = BLACK
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_84  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_838  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_84.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_84  &
   color = BLACK
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_85  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_839  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_85.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_85  &
   color = BLACK  &
   transparency = 50
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_86  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_840  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_86.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_86  &
   color = WHITE
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_87  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_841  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_87.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_87  &
   color = WHITE
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_88  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_842  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_88.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_88  &
   color = WHITE
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_89  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_843  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_89.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_89  &
   color = WHITE
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_90  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_844  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_90.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_90  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_91  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_845  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_91.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_91  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_92  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_846  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_92.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_92  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_93  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_847  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_93.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_93  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_94  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_848  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_94.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_94  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_95  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_849  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_95.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_95  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_96  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_850  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_96.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_96  &
   color = DARK_GRAY
!
geometry create shape shell  &
   shell_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_97  &
   reference_marker = .VI_CRT_Demo_RT.ges_chassis.MARKER_851  &
   file_name =   &
               "mdids://private/shell_graphics.tbl/vigt_body_shl_97.shl"  &
   wireframe_only = no
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.ges_chassis.vigt_body_shl_97  &
   color = DARK_GRAY
!
part attributes  &
   part_name = .VI_CRT_Demo_RT.ges_chassis  &
   visibility = on  &
   name_visibility = on
!
!--------------------------------- ges_engine ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
part create rigid_body name_and_position  &
   part_name = .VI_CRT_Demo_RT.ges_engine  &
   adams_id = 7  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ges_engine
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_engine.cm  &
   location = 1500.0, 0.0, 300.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.ges_engine.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.ges_engine.inertia_frame  &
   location = 1500.0, 0.0, 300.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .VI_CRT_Demo_RT.ges_engine  &
   mass = 1.0  &
   center_of_mass_marker = .VI_CRT_Demo_RT.ges_engine.cm  &
   inertia_marker = .VI_CRT_Demo_RT.ges_engine.inertia_frame  &
   ixx = 1.0  &
   iyy = 1.0  &
   izz = 1.0  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
part attributes  &
   part_name = .VI_CRT_Demo_RT.ges_engine  &
   visibility = on  &
   name_visibility = on
!
!------------------------------ whl_front_wheel -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
part create rigid_body name_and_position  &
   part_name = .VI_CRT_Demo_RT.whl_front_wheel  &
   adams_id = 3  &
   location = 0.0, 880.0, 340.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.whl_front_wheel
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.whl_front_wheel.cm  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.whl_front_wheel.tire_i  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.whl_front_wheel.tire_i  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.whl_front_wheel.geo_ctr  &
   location = 0.0, 27.5, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.whl_front_wheel.geo_ctr  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.whl_front_wheel.geo_inr  &
   location = 0.0, 137.5, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.whl_front_wheel.geo_inr  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.whl_front_wheel.geo_otr  &
   location = 0.0, -137.5, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.whl_front_wheel.geo_otr  &
   visibility = off  &
   name_visibility = off
!
part create rigid_body mass_properties  &
   part_name = .VI_CRT_Demo_RT.whl_front_wheel  &
   mass = 1.0  &
   center_of_mass_marker = .VI_CRT_Demo_RT.whl_front_wheel.cm  &
   ixx = 1.0  &
   iyy = 1.0  &
   izz = 1.0  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .VI_CRT_Demo_RT.whl_front_wheel.wheel_hub  &
   center_marker = .VI_CRT_Demo_RT.whl_front_wheel.geo_ctr  &
   angle_extent = 360.0  &
   length = 55.0  &
   radius = 186.1  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whl_front_wheel.wheel_hub  &
   color = SILVER
!
geometry create shape cylinder  &
   cylinder_name = .VI_CRT_Demo_RT.whl_front_wheel.wheel_rim  &
   center_marker = .VI_CRT_Demo_RT.whl_front_wheel.geo_inr  &
   angle_extent = 360.0  &
   length = -275.0  &
   radius = 186.1  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whl_front_wheel.wheel_rim  &
   color = SILVER
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_front_wheel.wheel_inner1  &
   center_marker = .VI_CRT_Demo_RT.whl_front_wheel.geo_inr  &
   angle_extent = 360.0  &
   length = 0.0  &
   top_radius = 186.1  &
   bottom_radius = 219.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whl_front_wheel.wheel_inner1  &
   color = SILVER
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_front_wheel.wheel_outer1  &
   center_marker = .VI_CRT_Demo_RT.whl_front_wheel.geo_otr  &
   angle_extent = 360.0  &
   length = 0.0  &
   top_radius = 186.1  &
   bottom_radius = 219.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whl_front_wheel.wheel_outer1  &
   color = SILVER
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_front_wheel.wheel_mark_outer  &
   center_marker = .VI_CRT_Demo_RT.whl_front_wheel.geo_otr  &
   angle_extent = 20.0  &
   length = 2.0  &
   top_radius = 0.0  &
   bottom_radius = 219.0  &
   side_count_for_body = 1  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whl_front_wheel.wheel_mark_outer  &
   color = RED
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_front_wheel.wheel_mark_inner  &
   center_marker = .VI_CRT_Demo_RT.whl_front_wheel.geo_inr  &
   angle_extent = -20.0  &
   length = -2.0  &
   top_radius = 0.0  &
   bottom_radius = 219.0  &
   side_count_for_body = 1  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whl_front_wheel.wheel_mark_inner  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .VI_CRT_Demo_RT.whl_front_wheel.tire_tread  &
   center_marker = .VI_CRT_Demo_RT.whl_front_wheel.geo_inr  &
   angle_extent = 360.0  &
   length = -275.0  &
   radius = 329.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whl_front_wheel.tire_tread  &
   color = DARK_GRAY
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_front_wheel.tire_sidewall1  &
   center_marker = .VI_CRT_Demo_RT.whl_front_wheel.geo_inr  &
   angle_extent = 360.0  &
   length = 27.5  &
   top_radius = 274.0  &
   bottom_radius = 219.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whl_front_wheel.tire_sidewall1  &
   color = DARK_GRAY
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_front_wheel.tire_sidewall2  &
   center_marker = .VI_CRT_Demo_RT.whl_front_wheel.geo_inr  &
   angle_extent = 360.0  &
   length = 27.5  &
   top_radius = 274.0  &
   bottom_radius = 329.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whl_front_wheel.tire_sidewall2  &
   color = DARK_GRAY
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_front_wheel.tire_sidewall3  &
   center_marker = .VI_CRT_Demo_RT.whl_front_wheel.geo_otr  &
   angle_extent = 360.0  &
   length = 27.5  &
   top_radius = 274.0  &
   bottom_radius = 219.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whl_front_wheel.tire_sidewall3  &
   color = DARK_GRAY
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_front_wheel.tire_sidewall4  &
   center_marker = .VI_CRT_Demo_RT.whl_front_wheel.geo_otr  &
   angle_extent = 360.0  &
   length = 27.5  &
   top_radius = 274.0  &
   bottom_radius = 329.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whl_front_wheel.tire_sidewall4  &
   color = DARK_GRAY
!
part attributes  &
   part_name = .VI_CRT_Demo_RT.whl_front_wheel  &
   visibility = on  &
   name_visibility = on
!
!------------------------------ whr_front_wheel -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
part create rigid_body name_and_position  &
   part_name = .VI_CRT_Demo_RT.whr_front_wheel  &
   adams_id = 5  &
   location = 0.0, -880.0, 340.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.whr_front_wheel
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.whr_front_wheel.cm  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.whr_front_wheel.tire_i  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.whr_front_wheel.tire_i  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.whr_front_wheel.geo_ctr  &
   location = 0.0, 27.5, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.whr_front_wheel.geo_ctr  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.whr_front_wheel.geo_inr  &
   location = 0.0, 137.5, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.whr_front_wheel.geo_inr  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.whr_front_wheel.geo_otr  &
   location = 0.0, -137.5, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.whr_front_wheel.geo_otr  &
   visibility = off  &
   name_visibility = off
!
part create rigid_body mass_properties  &
   part_name = .VI_CRT_Demo_RT.whr_front_wheel  &
   mass = 1.0  &
   center_of_mass_marker = .VI_CRT_Demo_RT.whr_front_wheel.cm  &
   ixx = 1.0  &
   iyy = 1.0  &
   izz = 1.0  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .VI_CRT_Demo_RT.whr_front_wheel.wheel_hub  &
   center_marker = .VI_CRT_Demo_RT.whr_front_wheel.geo_ctr  &
   angle_extent = 360.0  &
   length = 55.0  &
   radius = 186.1  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whr_front_wheel.wheel_hub  &
   color = SILVER
!
geometry create shape cylinder  &
   cylinder_name = .VI_CRT_Demo_RT.whr_front_wheel.wheel_rim  &
   center_marker = .VI_CRT_Demo_RT.whr_front_wheel.geo_inr  &
   angle_extent = 360.0  &
   length = -275.0  &
   radius = 186.1  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whr_front_wheel.wheel_rim  &
   color = SILVER
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_front_wheel.wheel_inner1  &
   center_marker = .VI_CRT_Demo_RT.whr_front_wheel.geo_inr  &
   angle_extent = 360.0  &
   length = 0.0  &
   top_radius = 186.1  &
   bottom_radius = 219.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whr_front_wheel.wheel_inner1  &
   color = SILVER
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_front_wheel.wheel_outer1  &
   center_marker = .VI_CRT_Demo_RT.whr_front_wheel.geo_otr  &
   angle_extent = 360.0  &
   length = 0.0  &
   top_radius = 186.1  &
   bottom_radius = 219.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whr_front_wheel.wheel_outer1  &
   color = SILVER
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_front_wheel.wheel_mark_outer  &
   center_marker = .VI_CRT_Demo_RT.whr_front_wheel.geo_otr  &
   angle_extent = 20.0  &
   length = 2.0  &
   top_radius = 0.0  &
   bottom_radius = 219.0  &
   side_count_for_body = 1  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whr_front_wheel.wheel_mark_outer  &
   color = RED
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_front_wheel.wheel_mark_inner  &
   center_marker = .VI_CRT_Demo_RT.whr_front_wheel.geo_inr  &
   angle_extent = -20.0  &
   length = -2.0  &
   top_radius = 0.0  &
   bottom_radius = 219.0  &
   side_count_for_body = 1  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whr_front_wheel.wheel_mark_inner  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .VI_CRT_Demo_RT.whr_front_wheel.tire_tread  &
   center_marker = .VI_CRT_Demo_RT.whr_front_wheel.geo_inr  &
   angle_extent = 360.0  &
   length = -275.0  &
   radius = 329.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whr_front_wheel.tire_tread  &
   color = DARK_GRAY
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_front_wheel.tire_sidewall1  &
   center_marker = .VI_CRT_Demo_RT.whr_front_wheel.geo_inr  &
   angle_extent = 360.0  &
   length = 27.5  &
   top_radius = 274.0  &
   bottom_radius = 219.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whr_front_wheel.tire_sidewall1  &
   color = DARK_GRAY
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_front_wheel.tire_sidewall2  &
   center_marker = .VI_CRT_Demo_RT.whr_front_wheel.geo_inr  &
   angle_extent = 360.0  &
   length = 27.5  &
   top_radius = 274.0  &
   bottom_radius = 329.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whr_front_wheel.tire_sidewall2  &
   color = DARK_GRAY
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_front_wheel.tire_sidewall3  &
   center_marker = .VI_CRT_Demo_RT.whr_front_wheel.geo_otr  &
   angle_extent = 360.0  &
   length = 27.5  &
   top_radius = 274.0  &
   bottom_radius = 219.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whr_front_wheel.tire_sidewall3  &
   color = DARK_GRAY
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_front_wheel.tire_sidewall4  &
   center_marker = .VI_CRT_Demo_RT.whr_front_wheel.geo_otr  &
   angle_extent = 360.0  &
   length = 27.5  &
   top_radius = 274.0  &
   bottom_radius = 329.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whr_front_wheel.tire_sidewall4  &
   color = DARK_GRAY
!
part attributes  &
   part_name = .VI_CRT_Demo_RT.whr_front_wheel  &
   visibility = on  &
   name_visibility = on
!
!------------------------------- whl_rear_wheel -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
part create rigid_body name_and_position  &
   part_name = .VI_CRT_Demo_RT.whl_rear_wheel  &
   adams_id = 4  &
   location = -2920.0, 870.0, 360.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.whl_rear_wheel
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.whl_rear_wheel.cm  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.whl_rear_wheel.tire_i  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.whl_rear_wheel.tire_i  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.whl_rear_wheel.geo_ctr  &
   location = 0.0, 35.0, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.whl_rear_wheel.geo_ctr  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.whl_rear_wheel.geo_inr  &
   location = 0.0, 175.0, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.whl_rear_wheel.geo_inr  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.whl_rear_wheel.geo_otr  &
   location = 0.0, -175.0, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.whl_rear_wheel.geo_otr  &
   visibility = off  &
   name_visibility = off
!
part create rigid_body mass_properties  &
   part_name = .VI_CRT_Demo_RT.whl_rear_wheel  &
   mass = 1.0  &
   center_of_mass_marker = .VI_CRT_Demo_RT.whl_rear_wheel.cm  &
   ixx = 1.0  &
   iyy = 1.0  &
   izz = 1.0  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .VI_CRT_Demo_RT.whl_rear_wheel.wheel_hub  &
   center_marker = .VI_CRT_Demo_RT.whl_rear_wheel.geo_ctr  &
   angle_extent = 360.0  &
   length = 70.0  &
   radius = 184.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whl_rear_wheel.wheel_hub  &
   color = SILVER
!
geometry create shape cylinder  &
   cylinder_name = .VI_CRT_Demo_RT.whl_rear_wheel.wheel_rim  &
   center_marker = .VI_CRT_Demo_RT.whl_rear_wheel.geo_inr  &
   angle_extent = 360.0  &
   length = -350.0  &
   radius = 184.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whl_rear_wheel.wheel_rim  &
   color = SILVER
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_rear_wheel.wheel_inner1  &
   center_marker = .VI_CRT_Demo_RT.whl_rear_wheel.geo_inr  &
   angle_extent = 360.0  &
   length = 0.0  &
   top_radius = 184.0  &
   bottom_radius = 220.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whl_rear_wheel.wheel_inner1  &
   color = SILVER
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_rear_wheel.wheel_outer1  &
   center_marker = .VI_CRT_Demo_RT.whl_rear_wheel.geo_otr  &
   angle_extent = 360.0  &
   length = 0.0  &
   top_radius = 184.0  &
   bottom_radius = 220.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whl_rear_wheel.wheel_outer1  &
   color = SILVER
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_rear_wheel.wheel_mark_outer  &
   center_marker = .VI_CRT_Demo_RT.whl_rear_wheel.geo_otr  &
   angle_extent = 20.0  &
   length = 2.0  &
   top_radius = 0.0  &
   bottom_radius = 220.0  &
   side_count_for_body = 1  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whl_rear_wheel.wheel_mark_outer  &
   color = RED
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_rear_wheel.wheel_mark_inner  &
   center_marker = .VI_CRT_Demo_RT.whl_rear_wheel.geo_inr  &
   angle_extent = -20.0  &
   length = -2.0  &
   top_radius = 0.0  &
   bottom_radius = 220.0  &
   side_count_for_body = 1  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whl_rear_wheel.wheel_mark_inner  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .VI_CRT_Demo_RT.whl_rear_wheel.tire_tread  &
   center_marker = .VI_CRT_Demo_RT.whl_rear_wheel.geo_inr  &
   angle_extent = 360.0  &
   length = -350.0  &
   radius = 360.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whl_rear_wheel.tire_tread  &
   color = DARK_GRAY
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_rear_wheel.tire_sidewall1  &
   center_marker = .VI_CRT_Demo_RT.whl_rear_wheel.geo_inr  &
   angle_extent = 360.0  &
   length = 35.0  &
   top_radius = 290.0  &
   bottom_radius = 220.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whl_rear_wheel.tire_sidewall1  &
   color = DARK_GRAY
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_rear_wheel.tire_sidewall2  &
   center_marker = .VI_CRT_Demo_RT.whl_rear_wheel.geo_inr  &
   angle_extent = 360.0  &
   length = 35.0  &
   top_radius = 290.0  &
   bottom_radius = 360.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whl_rear_wheel.tire_sidewall2  &
   color = DARK_GRAY
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_rear_wheel.tire_sidewall3  &
   center_marker = .VI_CRT_Demo_RT.whl_rear_wheel.geo_otr  &
   angle_extent = 360.0  &
   length = 35.0  &
   top_radius = 290.0  &
   bottom_radius = 220.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whl_rear_wheel.tire_sidewall3  &
   color = DARK_GRAY
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_rear_wheel.tire_sidewall4  &
   center_marker = .VI_CRT_Demo_RT.whl_rear_wheel.geo_otr  &
   angle_extent = 360.0  &
   length = 35.0  &
   top_radius = 290.0  &
   bottom_radius = 360.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whl_rear_wheel.tire_sidewall4  &
   color = DARK_GRAY
!
part attributes  &
   part_name = .VI_CRT_Demo_RT.whl_rear_wheel  &
   visibility = on  &
   name_visibility = on
!
!------------------------------- whr_rear_wheel -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
part create rigid_body name_and_position  &
   part_name = .VI_CRT_Demo_RT.whr_rear_wheel  &
   adams_id = 6  &
   location = -2920.0, -870.0, 360.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.whr_rear_wheel
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.whr_rear_wheel.cm  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.whr_rear_wheel.tire_i  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.whr_rear_wheel.tire_i  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.whr_rear_wheel.geo_ctr  &
   location = 0.0, 35.0, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.whr_rear_wheel.geo_ctr  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.whr_rear_wheel.geo_inr  &
   location = 0.0, 175.0, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.whr_rear_wheel.geo_inr  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .VI_CRT_Demo_RT.whr_rear_wheel.geo_otr  &
   location = 0.0, -175.0, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .VI_CRT_Demo_RT.whr_rear_wheel.geo_otr  &
   visibility = off  &
   name_visibility = off
!
part create rigid_body mass_properties  &
   part_name = .VI_CRT_Demo_RT.whr_rear_wheel  &
   mass = 1.0  &
   center_of_mass_marker = .VI_CRT_Demo_RT.whr_rear_wheel.cm  &
   ixx = 1.0  &
   iyy = 1.0  &
   izz = 1.0  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .VI_CRT_Demo_RT.whr_rear_wheel.wheel_hub  &
   center_marker = .VI_CRT_Demo_RT.whr_rear_wheel.geo_ctr  &
   angle_extent = 360.0  &
   length = 70.0  &
   radius = 184.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whr_rear_wheel.wheel_hub  &
   color = SILVER
!
geometry create shape cylinder  &
   cylinder_name = .VI_CRT_Demo_RT.whr_rear_wheel.wheel_rim  &
   center_marker = .VI_CRT_Demo_RT.whr_rear_wheel.geo_inr  &
   angle_extent = 360.0  &
   length = -350.0  &
   radius = 184.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whr_rear_wheel.wheel_rim  &
   color = SILVER
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_rear_wheel.wheel_inner1  &
   center_marker = .VI_CRT_Demo_RT.whr_rear_wheel.geo_inr  &
   angle_extent = 360.0  &
   length = 0.0  &
   top_radius = 184.0  &
   bottom_radius = 220.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whr_rear_wheel.wheel_inner1  &
   color = SILVER
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_rear_wheel.wheel_outer1  &
   center_marker = .VI_CRT_Demo_RT.whr_rear_wheel.geo_otr  &
   angle_extent = 360.0  &
   length = 0.0  &
   top_radius = 184.0  &
   bottom_radius = 220.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whr_rear_wheel.wheel_outer1  &
   color = SILVER
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_rear_wheel.wheel_mark_outer  &
   center_marker = .VI_CRT_Demo_RT.whr_rear_wheel.geo_otr  &
   angle_extent = 20.0  &
   length = 2.0  &
   top_radius = 0.0  &
   bottom_radius = 220.0  &
   side_count_for_body = 1  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whr_rear_wheel.wheel_mark_outer  &
   color = RED
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_rear_wheel.wheel_mark_inner  &
   center_marker = .VI_CRT_Demo_RT.whr_rear_wheel.geo_inr  &
   angle_extent = -20.0  &
   length = -2.0  &
   top_radius = 0.0  &
   bottom_radius = 220.0  &
   side_count_for_body = 1  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whr_rear_wheel.wheel_mark_inner  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .VI_CRT_Demo_RT.whr_rear_wheel.tire_tread  &
   center_marker = .VI_CRT_Demo_RT.whr_rear_wheel.geo_inr  &
   angle_extent = 360.0  &
   length = -350.0  &
   radius = 360.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whr_rear_wheel.tire_tread  &
   color = DARK_GRAY
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_rear_wheel.tire_sidewall1  &
   center_marker = .VI_CRT_Demo_RT.whr_rear_wheel.geo_inr  &
   angle_extent = 360.0  &
   length = 35.0  &
   top_radius = 290.0  &
   bottom_radius = 220.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whr_rear_wheel.tire_sidewall1  &
   color = DARK_GRAY
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_rear_wheel.tire_sidewall2  &
   center_marker = .VI_CRT_Demo_RT.whr_rear_wheel.geo_inr  &
   angle_extent = 360.0  &
   length = 35.0  &
   top_radius = 290.0  &
   bottom_radius = 360.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whr_rear_wheel.tire_sidewall2  &
   color = DARK_GRAY
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_rear_wheel.tire_sidewall3  &
   center_marker = .VI_CRT_Demo_RT.whr_rear_wheel.geo_otr  &
   angle_extent = 360.0  &
   length = 35.0  &
   top_radius = 290.0  &
   bottom_radius = 220.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whr_rear_wheel.tire_sidewall3  &
   color = DARK_GRAY
!
geometry create shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_rear_wheel.tire_sidewall4  &
   center_marker = .VI_CRT_Demo_RT.whr_rear_wheel.geo_otr  &
   angle_extent = 360.0  &
   length = 35.0  &
   top_radius = 290.0  &
   bottom_radius = 360.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 0
!
geometry attributes  &
   geometry_name = .VI_CRT_Demo_RT.whr_rear_wheel.tire_sidewall4  &
   color = DARK_GRAY
!
part attributes  &
   part_name = .VI_CRT_Demo_RT.whr_rear_wheel  &
   visibility = on  &
   name_visibility = on
!
!----------------------------- Analysis settings ------------------------------!
!
!
!---------------------------- Adams/View Variables ----------------------------!
!
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cil_front_wheel_center  &
   units = "length"  &
   real_value = 0.0, 880.0, 340.0
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cil_front_wheel_center.matching_name  &
   string_value = "wheel_center"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cil_front_wheel_center.entity  &
   string_value = "location"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cil_front_wheel_center.minor_role  &
   string_value = "front"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cir_front_wheel_center  &
   units = "length"  &
   real_value = 0.0, -880.0, 340.0
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cir_front_wheel_center.matching_name  &
   string_value = "wheel_center"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cir_front_wheel_center.entity  &
   string_value = "location"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cir_front_wheel_center.minor_role  &
   string_value = "front"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cil_rear_wheel_center  &
   units = "length"  &
   real_value = -2920.0, 870.0, 360.0
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cil_rear_wheel_center.matching_name  &
   string_value = "wheel_center"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cil_rear_wheel_center.entity  &
   string_value = "location"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cil_rear_wheel_center.minor_role  &
   string_value = "rear"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cir_rear_wheel_center  &
   units = "length"  &
   real_value = -2920.0, -870.0, 360.0
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cir_rear_wheel_center.matching_name  &
   string_value = "wheel_center"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cir_rear_wheel_center.entity  &
   string_value = "location"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cir_rear_wheel_center.minor_role  &
   string_value = "rear"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cil_front_toe_angle  &
   units = "no_units"  &
   real_value = 0.0
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cil_front_toe_angle.matching_name  &
   string_value = "toe_angle"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cil_front_toe_angle.entity  &
   string_value = "parameter_real"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cil_front_toe_angle.minor_role  &
   string_value = "front"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cir_front_toe_angle  &
   units = "no_units"  &
   real_value = 0.0
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cir_front_toe_angle.matching_name  &
   string_value = "toe_angle"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cir_front_toe_angle.entity  &
   string_value = "parameter_real"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cir_front_toe_angle.minor_role  &
   string_value = "front"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cil_front_camber_angle  &
   units = "no_units"  &
   real_value = 0.0
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cil_front_camber_angle.matching_name  &
   string_value = "camber_angle"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cil_front_camber_angle.entity  &
   string_value = "parameter_real"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cil_front_camber_angle.minor_role  &
   string_value = "front"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cir_front_camber_angle  &
   units = "no_units"  &
   real_value = 0.0
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cir_front_camber_angle.matching_name  &
   string_value = "camber_angle"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cir_front_camber_angle.entity  &
   string_value = "parameter_real"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cir_front_camber_angle.minor_role  &
   string_value = "front"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cil_rear_camber_angle  &
   units = "no_units"  &
   real_value = 0.0
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cil_rear_camber_angle.matching_name  &
   string_value = "camber_angle"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cil_rear_camber_angle.entity  &
   string_value = "parameter_real"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cil_rear_camber_angle.minor_role  &
   string_value = "rear"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cir_rear_camber_angle  &
   units = "no_units"  &
   real_value = 0.0
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cir_rear_camber_angle.matching_name  &
   string_value = "camber_angle"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cir_rear_camber_angle.entity  &
   string_value = "parameter_real"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cir_rear_camber_angle.minor_role  &
   string_value = "rear"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cil_rear_toe_angle  &
   units = "no_units"  &
   real_value = 0.0
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cil_rear_toe_angle.matching_name  &
   string_value = "toe_angle"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cil_rear_toe_angle.entity  &
   string_value = "parameter_real"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cil_rear_toe_angle.minor_role  &
   string_value = "rear"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cir_rear_toe_angle  &
   units = "no_units"  &
   real_value = 0.0
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cir_rear_toe_angle.matching_name  &
   string_value = "toe_angle"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cir_rear_toe_angle.entity  &
   string_value = "parameter_real"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.cir_rear_toe_angle.minor_role  &
   string_value = "rear"
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.fl_tire_radius  &
   units = "length"  &
   real_value = 329.0
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.fl_tire_width  &
   units = "length"  &
   real_value = 275.0
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.fr_tire_radius  &
   units = "length"  &
   real_value = 329.0
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.fr_tire_width  &
   units = "length"  &
   real_value = 275.0
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.rl_tire_radius  &
   units = "length"  &
   real_value = 360.0
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.rl_tire_width  &
   units = "length"  &
   real_value = 350.0
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.rr_tire_radius  &
   units = "length"  &
   real_value = 360.0
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.rr_tire_width  &
   units = "length"  &
   real_value = 350.0
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.whl_front_wheel.center_offset  &
   units = "length"  &
   real_value = 0.0
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.whr_front_wheel.center_offset  &
   units = "length"  &
   real_value = 0.0
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.whl_rear_wheel.center_offset  &
   units = "length"  &
   real_value = 0.0
!
variable create  &
   variable_name = .VI_CRT_Demo_RT.whr_rear_wheel.center_offset  &
   units = "length"  &
   real_value = 0.0
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
material modify  &
   material_name = .VI_CRT_Demo_RT.steel  &
   density = (7801.0(kg/meter**3))  &
   youngs_modulus = (2.07E+011(Newton/meter**2))
!
marker modify  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.inertia_frame  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .VI_CRT_Demo_RT.ges_chassis.cm))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .VI_CRT_Demo_RT.ges_chassis))  &
   relative_to = .VI_CRT_Demo_RT.ges_chassis
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
marker modify  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.fwl  &
   location =   &
      (.VI_CRT_Demo_RT.cil_front_wheel_center)  &
   orientation =   &
      (ORI_RELATIVE_TO({180d - .VI_CRT_Demo_RT.cil_front_toe_angle, -90d - .VI_CRT_Demo_RT.cil_front_camber_angle, 180d}, .VI_CRT_Demo_RT.ground.origo))  &
   relative_to = .VI_CRT_Demo_RT.ges_chassis
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
marker modify  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.rwl  &
   location =   &
      (.VI_CRT_Demo_RT.cil_rear_wheel_center)  &
   orientation =   &
      (ORI_RELATIVE_TO({180d - .VI_CRT_Demo_RT.cil_rear_toe_angle, -90d - .VI_CRT_Demo_RT.cil_rear_camber_angle, 180d}, .VI_CRT_Demo_RT.ground.origo))  &
   relative_to = .VI_CRT_Demo_RT.ges_chassis
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
marker modify  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.rwr  &
   location =   &
      (.VI_CRT_Demo_RT.cir_rear_wheel_center)  &
   orientation =   &
      (ORI_RELATIVE_TO({180d - .VI_CRT_Demo_RT.cir_rear_toe_angle, -90d - .VI_CRT_Demo_RT.cir_rear_camber_angle, 180d}, .VI_CRT_Demo_RT.ground.origo))  &
   relative_to = .VI_CRT_Demo_RT.ges_chassis
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
marker modify  &
   marker_name = .VI_CRT_Demo_RT.ges_chassis.fwr  &
   location =   &
      (.VI_CRT_Demo_RT.cir_front_wheel_center)  &
   orientation =   &
      (ORI_RELATIVE_TO({180d - .VI_CRT_Demo_RT.cir_front_toe_angle, -90d - .VI_CRT_Demo_RT.cir_front_camber_angle, 180d}, .VI_CRT_Demo_RT.ground.origo))  &
   relative_to = .VI_CRT_Demo_RT.ges_chassis
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
marker modify  &
   marker_name = .VI_CRT_Demo_RT.ges_engine.inertia_frame  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .VI_CRT_Demo_RT.ges_engine.cm))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .VI_CRT_Demo_RT.ges_engine))  &
   relative_to = .VI_CRT_Demo_RT.ges_engine
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
part modify rigid_body name_and_position  &
   part_name = .VI_CRT_Demo_RT.whl_front_wheel  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .VI_CRT_Demo_RT.ges_chassis.fwl))
!
marker modify  &
   marker_name = .VI_CRT_Demo_RT.whl_front_wheel.tire_i  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .VI_CRT_Demo_RT.ges_chassis.fwl))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .VI_CRT_Demo_RT.ges_chassis.fwl))  &
   relative_to = .VI_CRT_Demo_RT.whl_front_wheel
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
marker modify  &
   marker_name = .VI_CRT_Demo_RT.whl_front_wheel.geo_ctr  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, .VI_CRT_Demo_RT.whl_front_wheel.center_offset - 0.1 * .VI_CRT_Demo_RT.fl_tire_width}, .VI_CRT_Demo_RT.whl_front_wheel.tire_i))  &
   relative_to = .VI_CRT_Demo_RT.whl_front_wheel
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
marker modify  &
   marker_name = .VI_CRT_Demo_RT.whl_front_wheel.geo_inr  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, -.VI_CRT_Demo_RT.fl_tire_width / 2}, .VI_CRT_Demo_RT.whl_front_wheel.tire_i))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180d, 0}, .VI_CRT_Demo_RT.whl_front_wheel.tire_i))  &
   relative_to = .VI_CRT_Demo_RT.whl_front_wheel
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
marker modify  &
   marker_name = .VI_CRT_Demo_RT.whl_front_wheel.geo_otr  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, .VI_CRT_Demo_RT.fl_tire_width / 2}, .VI_CRT_Demo_RT.whl_front_wheel.tire_i))  &
   relative_to = .VI_CRT_Demo_RT.whl_front_wheel
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
geometry modify shape cylinder  &
   cylinder_name = .VI_CRT_Demo_RT.whl_front_wheel.wheel_hub  &
   angle_extent = (360.0(deg))  &
   length = (0.2 * .VI_CRT_Demo_RT.fl_tire_width)  &
   radius = (.VI_CRT_Demo_RT.fl_tire_radius - .VI_CRT_Demo_RT.fl_tire_width * 0.4 - 0.1 * .VI_CRT_Demo_RT.fl_tire_radius)
!
geometry modify shape cylinder  &
   cylinder_name = .VI_CRT_Demo_RT.whl_front_wheel.wheel_rim  &
   angle_extent = (360.0(deg))  &
   length = (-.VI_CRT_Demo_RT.fl_tire_width)  &
   radius = (.VI_CRT_Demo_RT.fl_tire_radius - .VI_CRT_Demo_RT.fl_tire_width * 0.4 - 0.1 * .VI_CRT_Demo_RT.fl_tire_radius)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_front_wheel.wheel_inner1  &
   angle_extent = (360.0(deg))  &
   top_radius = (.VI_CRT_Demo_RT.fl_tire_radius - .VI_CRT_Demo_RT.fl_tire_width * 0.4 - 0.1 * .VI_CRT_Demo_RT.fl_tire_radius)  &
   bottom_radius = (.VI_CRT_Demo_RT.fl_tire_radius - .VI_CRT_Demo_RT.fl_tire_width * 0.4)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_front_wheel.wheel_outer1  &
   angle_extent = (360.0(deg))  &
   top_radius = (.VI_CRT_Demo_RT.fl_tire_radius - .VI_CRT_Demo_RT.fl_tire_width * 0.4 - 0.1 * .VI_CRT_Demo_RT.fl_tire_radius)  &
   bottom_radius = (.VI_CRT_Demo_RT.fl_tire_radius - .VI_CRT_Demo_RT.fl_tire_width * 0.4)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_front_wheel.wheel_mark_outer  &
   angle_extent = (20.0(deg))  &
   length = (2.0(mm))  &
   bottom_radius = (.VI_CRT_Demo_RT.fl_tire_radius - .VI_CRT_Demo_RT.fl_tire_width * 0.4)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_front_wheel.wheel_mark_inner  &
   angle_extent = (-20.0(deg))  &
   length = (-2.0(mm))  &
   bottom_radius = (.VI_CRT_Demo_RT.fl_tire_radius - .VI_CRT_Demo_RT.fl_tire_width * 0.4)
!
geometry modify shape cylinder  &
   cylinder_name = .VI_CRT_Demo_RT.whl_front_wheel.tire_tread  &
   angle_extent = (360.0(deg))  &
   length = (-.VI_CRT_Demo_RT.fl_tire_width)  &
   radius = (.VI_CRT_Demo_RT.fl_tire_radius)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_front_wheel.tire_sidewall1  &
   angle_extent = (360.0(deg))  &
   length = (0.25 * (.VI_CRT_Demo_RT.fl_tire_width * 0.4))  &
   top_radius = (.VI_CRT_Demo_RT.fl_tire_radius - 0.5 * (.VI_CRT_Demo_RT.fl_tire_width * 0.4))  &
   bottom_radius = (.VI_CRT_Demo_RT.fl_tire_radius - .VI_CRT_Demo_RT.fl_tire_width * 0.4)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_front_wheel.tire_sidewall2  &
   angle_extent = (360.0(deg))  &
   length = (0.25 * (.VI_CRT_Demo_RT.fl_tire_width * 0.4))  &
   top_radius = (.VI_CRT_Demo_RT.fl_tire_radius - 0.5 * (.VI_CRT_Demo_RT.fl_tire_width * 0.4))  &
   bottom_radius = (.VI_CRT_Demo_RT.fl_tire_radius)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_front_wheel.tire_sidewall3  &
   angle_extent = (360.0(deg))  &
   length = (0.25 * (.VI_CRT_Demo_RT.fl_tire_width * 0.4))  &
   top_radius = (.VI_CRT_Demo_RT.fl_tire_radius - 0.5 * (.VI_CRT_Demo_RT.fl_tire_width * 0.4))  &
   bottom_radius = (.VI_CRT_Demo_RT.fl_tire_radius - .VI_CRT_Demo_RT.fl_tire_width * 0.4)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_front_wheel.tire_sidewall4  &
   angle_extent = (360.0(deg))  &
   length = (0.25 * (.VI_CRT_Demo_RT.fl_tire_width * 0.4))  &
   top_radius = (.VI_CRT_Demo_RT.fl_tire_radius - 0.5 * (.VI_CRT_Demo_RT.fl_tire_width * 0.4))  &
   bottom_radius = (.VI_CRT_Demo_RT.fl_tire_radius)
!
part modify rigid_body name_and_position  &
   part_name = .VI_CRT_Demo_RT.whr_front_wheel  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .VI_CRT_Demo_RT.ges_chassis.fwr))
!
marker modify  &
   marker_name = .VI_CRT_Demo_RT.whr_front_wheel.tire_i  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .VI_CRT_Demo_RT.ges_chassis.fwr))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .VI_CRT_Demo_RT.ges_chassis.fwr))  &
   relative_to = .VI_CRT_Demo_RT.whr_front_wheel
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
marker modify  &
   marker_name = .VI_CRT_Demo_RT.whr_front_wheel.geo_ctr  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, .VI_CRT_Demo_RT.whr_front_wheel.center_offset - 0.1 * .VI_CRT_Demo_RT.fr_tire_width}, .VI_CRT_Demo_RT.whr_front_wheel.tire_i))  &
   relative_to = .VI_CRT_Demo_RT.whr_front_wheel
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
marker modify  &
   marker_name = .VI_CRT_Demo_RT.whr_front_wheel.geo_inr  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, -.VI_CRT_Demo_RT.fr_tire_width / 2}, .VI_CRT_Demo_RT.whr_front_wheel.tire_i))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180d, 0}, .VI_CRT_Demo_RT.whr_front_wheel.tire_i))  &
   relative_to = .VI_CRT_Demo_RT.whr_front_wheel
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
marker modify  &
   marker_name = .VI_CRT_Demo_RT.whr_front_wheel.geo_otr  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, .VI_CRT_Demo_RT.fr_tire_width / 2}, .VI_CRT_Demo_RT.whr_front_wheel.tire_i))  &
   relative_to = .VI_CRT_Demo_RT.whr_front_wheel
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
geometry modify shape cylinder  &
   cylinder_name = .VI_CRT_Demo_RT.whr_front_wheel.wheel_hub  &
   angle_extent = (360.0(deg))  &
   length = (0.2 * .VI_CRT_Demo_RT.fr_tire_width)  &
   radius = (.VI_CRT_Demo_RT.fr_tire_radius - .VI_CRT_Demo_RT.fr_tire_width * 0.4 - 0.1 * .VI_CRT_Demo_RT.fr_tire_radius)
!
geometry modify shape cylinder  &
   cylinder_name = .VI_CRT_Demo_RT.whr_front_wheel.wheel_rim  &
   angle_extent = (360.0(deg))  &
   length = (-.VI_CRT_Demo_RT.fr_tire_width)  &
   radius = (.VI_CRT_Demo_RT.fr_tire_radius - .VI_CRT_Demo_RT.fr_tire_width * 0.4 - 0.1 * .VI_CRT_Demo_RT.fr_tire_radius)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_front_wheel.wheel_inner1  &
   angle_extent = (360.0(deg))  &
   top_radius = (.VI_CRT_Demo_RT.fr_tire_radius - .VI_CRT_Demo_RT.fr_tire_width * 0.4 - 0.1 * .VI_CRT_Demo_RT.fr_tire_radius)  &
   bottom_radius = (.VI_CRT_Demo_RT.fr_tire_radius - .VI_CRT_Demo_RT.fr_tire_width * 0.4)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_front_wheel.wheel_outer1  &
   angle_extent = (360.0(deg))  &
   top_radius = (.VI_CRT_Demo_RT.fr_tire_radius - .VI_CRT_Demo_RT.fr_tire_width * 0.4 - 0.1 * .VI_CRT_Demo_RT.fr_tire_radius)  &
   bottom_radius = (.VI_CRT_Demo_RT.fr_tire_radius - .VI_CRT_Demo_RT.fr_tire_width * 0.4)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_front_wheel.wheel_mark_outer  &
   angle_extent = (20.0(deg))  &
   length = (2.0(mm))  &
   bottom_radius = (.VI_CRT_Demo_RT.fr_tire_radius - .VI_CRT_Demo_RT.fr_tire_width * 0.4)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_front_wheel.wheel_mark_inner  &
   angle_extent = (-20.0(deg))  &
   length = (-2.0(mm))  &
   bottom_radius = (.VI_CRT_Demo_RT.fr_tire_radius - .VI_CRT_Demo_RT.fr_tire_width * 0.4)
!
geometry modify shape cylinder  &
   cylinder_name = .VI_CRT_Demo_RT.whr_front_wheel.tire_tread  &
   angle_extent = (360.0(deg))  &
   length = (-.VI_CRT_Demo_RT.fr_tire_width)  &
   radius = (.VI_CRT_Demo_RT.fr_tire_radius)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_front_wheel.tire_sidewall1  &
   angle_extent = (360.0(deg))  &
   length = (0.25 * (.VI_CRT_Demo_RT.fr_tire_width * 0.4))  &
   top_radius = (.VI_CRT_Demo_RT.fr_tire_radius - 0.5 * (.VI_CRT_Demo_RT.fr_tire_width * 0.4))  &
   bottom_radius = (.VI_CRT_Demo_RT.fr_tire_radius - .VI_CRT_Demo_RT.fr_tire_width * 0.4)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_front_wheel.tire_sidewall2  &
   angle_extent = (360.0(deg))  &
   length = (0.25 * (.VI_CRT_Demo_RT.fr_tire_width * 0.4))  &
   top_radius = (.VI_CRT_Demo_RT.fr_tire_radius - 0.5 * (.VI_CRT_Demo_RT.fr_tire_width * 0.4))  &
   bottom_radius = (.VI_CRT_Demo_RT.fr_tire_radius)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_front_wheel.tire_sidewall3  &
   angle_extent = (360.0(deg))  &
   length = (0.25 * (.VI_CRT_Demo_RT.fr_tire_width * 0.4))  &
   top_radius = (.VI_CRT_Demo_RT.fr_tire_radius - 0.5 * (.VI_CRT_Demo_RT.fr_tire_width * 0.4))  &
   bottom_radius = (.VI_CRT_Demo_RT.fr_tire_radius - .VI_CRT_Demo_RT.fr_tire_width * 0.4)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_front_wheel.tire_sidewall4  &
   angle_extent = (360.0(deg))  &
   length = (0.25 * (.VI_CRT_Demo_RT.fr_tire_width * 0.4))  &
   top_radius = (.VI_CRT_Demo_RT.fr_tire_radius - 0.5 * (.VI_CRT_Demo_RT.fr_tire_width * 0.4))  &
   bottom_radius = (.VI_CRT_Demo_RT.fr_tire_radius)
!
part modify rigid_body name_and_position  &
   part_name = .VI_CRT_Demo_RT.whl_rear_wheel  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .VI_CRT_Demo_RT.ges_chassis.rwl))
!
marker modify  &
   marker_name = .VI_CRT_Demo_RT.whl_rear_wheel.tire_i  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .VI_CRT_Demo_RT.ges_chassis.rwl))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .VI_CRT_Demo_RT.ges_chassis.rwl))  &
   relative_to = .VI_CRT_Demo_RT.whl_rear_wheel
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
marker modify  &
   marker_name = .VI_CRT_Demo_RT.whl_rear_wheel.geo_ctr  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, .VI_CRT_Demo_RT.whl_rear_wheel.center_offset - 0.1 * .VI_CRT_Demo_RT.rl_tire_width}, .VI_CRT_Demo_RT.whl_rear_wheel.tire_i))  &
   relative_to = .VI_CRT_Demo_RT.whl_rear_wheel
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
marker modify  &
   marker_name = .VI_CRT_Demo_RT.whl_rear_wheel.geo_inr  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, -.VI_CRT_Demo_RT.rl_tire_width / 2}, .VI_CRT_Demo_RT.whl_rear_wheel.tire_i))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180d, 0}, .VI_CRT_Demo_RT.whl_rear_wheel.tire_i))  &
   relative_to = .VI_CRT_Demo_RT.whl_rear_wheel
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
marker modify  &
   marker_name = .VI_CRT_Demo_RT.whl_rear_wheel.geo_otr  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, .VI_CRT_Demo_RT.rl_tire_width / 2}, .VI_CRT_Demo_RT.whl_rear_wheel.tire_i))  &
   relative_to = .VI_CRT_Demo_RT.whl_rear_wheel
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
geometry modify shape cylinder  &
   cylinder_name = .VI_CRT_Demo_RT.whl_rear_wheel.wheel_hub  &
   angle_extent = (360.0(deg))  &
   length = (0.2 * .VI_CRT_Demo_RT.rl_tire_width)  &
   radius = (.VI_CRT_Demo_RT.rl_tire_radius - .VI_CRT_Demo_RT.rl_tire_width * 0.4 - 0.1 * .VI_CRT_Demo_RT.rl_tire_radius)
!
geometry modify shape cylinder  &
   cylinder_name = .VI_CRT_Demo_RT.whl_rear_wheel.wheel_rim  &
   angle_extent = (360.0(deg))  &
   length = (-.VI_CRT_Demo_RT.rl_tire_width)  &
   radius = (.VI_CRT_Demo_RT.rl_tire_radius - .VI_CRT_Demo_RT.rl_tire_width * 0.4 - 0.1 * .VI_CRT_Demo_RT.rl_tire_radius)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_rear_wheel.wheel_inner1  &
   angle_extent = (360.0(deg))  &
   top_radius = (.VI_CRT_Demo_RT.rl_tire_radius - .VI_CRT_Demo_RT.rl_tire_width * 0.4 - 0.1 * .VI_CRT_Demo_RT.rl_tire_radius)  &
   bottom_radius = (.VI_CRT_Demo_RT.rl_tire_radius - .VI_CRT_Demo_RT.rl_tire_width * 0.4)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_rear_wheel.wheel_outer1  &
   angle_extent = (360.0(deg))  &
   top_radius = (.VI_CRT_Demo_RT.rl_tire_radius - .VI_CRT_Demo_RT.rl_tire_width * 0.4 - 0.1 * .VI_CRT_Demo_RT.rl_tire_radius)  &
   bottom_radius = (.VI_CRT_Demo_RT.rl_tire_radius - .VI_CRT_Demo_RT.rl_tire_width * 0.4)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_rear_wheel.wheel_mark_outer  &
   angle_extent = (20.0(deg))  &
   length = (2.0(mm))  &
   bottom_radius = (.VI_CRT_Demo_RT.rl_tire_radius - .VI_CRT_Demo_RT.rl_tire_width * 0.4)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_rear_wheel.wheel_mark_inner  &
   angle_extent = (-20.0(deg))  &
   length = (-2.0(mm))  &
   bottom_radius = (.VI_CRT_Demo_RT.rl_tire_radius - .VI_CRT_Demo_RT.rl_tire_width * 0.4)
!
geometry modify shape cylinder  &
   cylinder_name = .VI_CRT_Demo_RT.whl_rear_wheel.tire_tread  &
   angle_extent = (360.0(deg))  &
   length = (-.VI_CRT_Demo_RT.rl_tire_width)  &
   radius = (.VI_CRT_Demo_RT.rl_tire_radius)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_rear_wheel.tire_sidewall1  &
   angle_extent = (360.0(deg))  &
   length = (0.25 * (.VI_CRT_Demo_RT.rl_tire_width * 0.4))  &
   top_radius = (.VI_CRT_Demo_RT.rl_tire_radius - 0.5 * (.VI_CRT_Demo_RT.rl_tire_width * 0.4))  &
   bottom_radius = (.VI_CRT_Demo_RT.rl_tire_radius - .VI_CRT_Demo_RT.rl_tire_width * 0.4)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_rear_wheel.tire_sidewall2  &
   angle_extent = (360.0(deg))  &
   length = (0.25 * (.VI_CRT_Demo_RT.rl_tire_width * 0.4))  &
   top_radius = (.VI_CRT_Demo_RT.rl_tire_radius - 0.5 * (.VI_CRT_Demo_RT.rl_tire_width * 0.4))  &
   bottom_radius = (.VI_CRT_Demo_RT.rl_tire_radius)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_rear_wheel.tire_sidewall3  &
   angle_extent = (360.0(deg))  &
   length = (0.25 * (.VI_CRT_Demo_RT.rl_tire_width * 0.4))  &
   top_radius = (.VI_CRT_Demo_RT.rl_tire_radius - 0.5 * (.VI_CRT_Demo_RT.rl_tire_width * 0.4))  &
   bottom_radius = (.VI_CRT_Demo_RT.rl_tire_radius - .VI_CRT_Demo_RT.rl_tire_width * 0.4)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whl_rear_wheel.tire_sidewall4  &
   angle_extent = (360.0(deg))  &
   length = (0.25 * (.VI_CRT_Demo_RT.rl_tire_width * 0.4))  &
   top_radius = (.VI_CRT_Demo_RT.rl_tire_radius - 0.5 * (.VI_CRT_Demo_RT.rl_tire_width * 0.4))  &
   bottom_radius = (.VI_CRT_Demo_RT.rl_tire_radius)
!
part modify rigid_body name_and_position  &
   part_name = .VI_CRT_Demo_RT.whr_rear_wheel  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .VI_CRT_Demo_RT.ges_chassis.rwr))
!
marker modify  &
   marker_name = .VI_CRT_Demo_RT.whr_rear_wheel.tire_i  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .VI_CRT_Demo_RT.ges_chassis.rwr))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .VI_CRT_Demo_RT.ges_chassis.rwr))  &
   relative_to = .VI_CRT_Demo_RT.whr_rear_wheel
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
marker modify  &
   marker_name = .VI_CRT_Demo_RT.whr_rear_wheel.geo_ctr  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, .VI_CRT_Demo_RT.whr_rear_wheel.center_offset - 0.1 * .VI_CRT_Demo_RT.rr_tire_width}, .VI_CRT_Demo_RT.whr_rear_wheel.tire_i))  &
   relative_to = .VI_CRT_Demo_RT.whr_rear_wheel
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
marker modify  &
   marker_name = .VI_CRT_Demo_RT.whr_rear_wheel.geo_inr  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, -.VI_CRT_Demo_RT.rr_tire_width / 2}, .VI_CRT_Demo_RT.whr_rear_wheel.tire_i))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180d, 0}, .VI_CRT_Demo_RT.whr_rear_wheel.tire_i))  &
   relative_to = .VI_CRT_Demo_RT.whr_rear_wheel
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
marker modify  &
   marker_name = .VI_CRT_Demo_RT.whr_rear_wheel.geo_otr  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, .VI_CRT_Demo_RT.rr_tire_width / 2}, .VI_CRT_Demo_RT.whr_rear_wheel.tire_i))  &
   relative_to = .VI_CRT_Demo_RT.whr_rear_wheel
!
defaults coordinate_system  &
   default_coordinate_system = .VI_CRT_Demo_RT.ground
!
geometry modify shape cylinder  &
   cylinder_name = .VI_CRT_Demo_RT.whr_rear_wheel.wheel_hub  &
   angle_extent = (360.0(deg))  &
   length = (0.2 * .VI_CRT_Demo_RT.rr_tire_width)  &
   radius = (.VI_CRT_Demo_RT.rr_tire_radius - .VI_CRT_Demo_RT.rr_tire_width * 0.4 - 0.1 * .VI_CRT_Demo_RT.rr_tire_radius)
!
geometry modify shape cylinder  &
   cylinder_name = .VI_CRT_Demo_RT.whr_rear_wheel.wheel_rim  &
   angle_extent = (360.0(deg))  &
   length = (-.VI_CRT_Demo_RT.rr_tire_width)  &
   radius = (.VI_CRT_Demo_RT.rr_tire_radius - .VI_CRT_Demo_RT.rr_tire_width * 0.4 - 0.1 * .VI_CRT_Demo_RT.rr_tire_radius)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_rear_wheel.wheel_inner1  &
   angle_extent = (360.0(deg))  &
   top_radius = (.VI_CRT_Demo_RT.rr_tire_radius - .VI_CRT_Demo_RT.rr_tire_width * 0.4 - 0.1 * .VI_CRT_Demo_RT.rr_tire_radius)  &
   bottom_radius = (.VI_CRT_Demo_RT.rr_tire_radius - .VI_CRT_Demo_RT.rr_tire_width * 0.4)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_rear_wheel.wheel_outer1  &
   angle_extent = (360.0(deg))  &
   top_radius = (.VI_CRT_Demo_RT.rr_tire_radius - .VI_CRT_Demo_RT.rr_tire_width * 0.4 - 0.1 * .VI_CRT_Demo_RT.rr_tire_radius)  &
   bottom_radius = (.VI_CRT_Demo_RT.rr_tire_radius - .VI_CRT_Demo_RT.rr_tire_width * 0.4)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_rear_wheel.wheel_mark_outer  &
   angle_extent = (20.0(deg))  &
   length = (2.0(mm))  &
   bottom_radius = (.VI_CRT_Demo_RT.rr_tire_radius - .VI_CRT_Demo_RT.rr_tire_width * 0.4)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_rear_wheel.wheel_mark_inner  &
   angle_extent = (-20.0(deg))  &
   length = (-2.0(mm))  &
   bottom_radius = (.VI_CRT_Demo_RT.rr_tire_radius - .VI_CRT_Demo_RT.rr_tire_width * 0.4)
!
geometry modify shape cylinder  &
   cylinder_name = .VI_CRT_Demo_RT.whr_rear_wheel.tire_tread  &
   angle_extent = (360.0(deg))  &
   length = (-.VI_CRT_Demo_RT.rr_tire_width)  &
   radius = (.VI_CRT_Demo_RT.rr_tire_radius)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_rear_wheel.tire_sidewall1  &
   angle_extent = (360.0(deg))  &
   length = (0.25 * (.VI_CRT_Demo_RT.rr_tire_width * 0.4))  &
   top_radius = (.VI_CRT_Demo_RT.rr_tire_radius - 0.5 * (.VI_CRT_Demo_RT.rr_tire_width * 0.4))  &
   bottom_radius = (.VI_CRT_Demo_RT.rr_tire_radius - .VI_CRT_Demo_RT.rr_tire_width * 0.4)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_rear_wheel.tire_sidewall2  &
   angle_extent = (360.0(deg))  &
   length = (0.25 * (.VI_CRT_Demo_RT.rr_tire_width * 0.4))  &
   top_radius = (.VI_CRT_Demo_RT.rr_tire_radius - 0.5 * (.VI_CRT_Demo_RT.rr_tire_width * 0.4))  &
   bottom_radius = (.VI_CRT_Demo_RT.rr_tire_radius)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_rear_wheel.tire_sidewall3  &
   angle_extent = (360.0(deg))  &
   length = (0.25 * (.VI_CRT_Demo_RT.rr_tire_width * 0.4))  &
   top_radius = (.VI_CRT_Demo_RT.rr_tire_radius - 0.5 * (.VI_CRT_Demo_RT.rr_tire_width * 0.4))  &
   bottom_radius = (.VI_CRT_Demo_RT.rr_tire_radius - .VI_CRT_Demo_RT.rr_tire_width * 0.4)
!
geometry modify shape frustum  &
   frustum_name = .VI_CRT_Demo_RT.whr_rear_wheel.tire_sidewall4  &
   angle_extent = (360.0(deg))  &
   length = (0.25 * (.VI_CRT_Demo_RT.rr_tire_width * 0.4))  &
   top_radius = (.VI_CRT_Demo_RT.rr_tire_radius - 0.5 * (.VI_CRT_Demo_RT.rr_tire_width * 0.4))  &
   bottom_radius = (.VI_CRT_Demo_RT.rr_tire_radius)
!
model display  &
   model_name = VI_CRT_Demo_RT
