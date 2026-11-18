import os, sys, math
import numpy as np

from vigrade.viscripting  import viframework
from vigrade.vipostprocessing.reportUtils import getResultData
from vigrade.vipostprocessing.custom_html_report import CustomHtmlReport


def postProcessing(resultFile, outputChannelMapFile = None,systemFile=None, eventType=None):
    outputPrefix      = os.path.splitext(resultFile)[0]
    # loading analysis results
    analysis  = viframework.viobjects.simulation.Analysis('ana')
    anaReader = viframework.viobjects.simulation.AnalysisReader()
    anaReader.read(resultFile,analysis)
    # retrieving simulation data
    t           = np.asarray(analysis.getChild('time.TIME').getValues())
    vx         = getResultData(analysis,'chassis_velocities_longitudinal', outputChannelMapFile)
    accx      = getResultData(analysis,'chassis_accelerations_longitudinal', outputChannelMapFile)
    accy      = getResultData(analysis,'chassis_accelerations_lateral', outputChannelMapFile)
    gear      = getResultData(analysis,'driver_demands_gear', outputChannelMapFile)
    brake    = getResultData(analysis,'driver_demands_brake', outputChannelMapFile)  
    swa       = getResultData(analysis,'driver_demands_steering', outputChannelMapFile)
    swt        = getResultData(analysis,'Steering_System_Steering_Wheel_Torque', outputChannelMapFile)
    yawVel  = getResultData(analysis,'chassis_velocities_yaw', outputChannelMapFile)
    pitch      = getResultData(analysis,'chassis_displacements_pitch', outputChannelMapFile)
    roll        = getResultData(analysis,'chassis_displacements_roll', outputChannelMapFile)

    html = CustomHtmlReport()
    html.add_summary_entry('Result File',resultFile)
    html.add_summary_entry('System File',systemFile)
    html.add_table_entry('Laptime',html.format_number(max(t)) , 'sec')
    html.add_table_entry('Longitudinal velocity maximum',html.format_number(max(vx)), 'Km/h')
    html.add_table_entry('Longitudinal velocity minimum',html.format_number(min(vx)), 'Km/h')
    html.add_table_entry('Steering wheel angle maximum',html.format_number(max(swa)*180/math.pi),'deg')
    html.add_table_entry('Steering wheel angle minimum',html.format_number(min(swa)*180/math.pi),'deg')
    html.add_table_entry('Steering wheel torque maximum',html.format_number(max(swt)),'N-m')
    html.add_table_entry('Steering wheel torque minimum',html.format_number(min(swt)),'N-m')
    html.add_table_entry('Roll angle maximum',html.format_number(max(roll)*180/math.pi),'deg')
    html.add_table_entry('Roll angle minimum',html.format_number(min(roll)*180/math.pi) ,'deg')
    html.add_table_entry('Pitch angle maximum',html.format_number(max(pitch)*180/math.pi),'deg')
    html.add_table_entry('Pitch angle minimum',html.format_number(min(pitch) *180/math.pi),'deg')
    html.add_table_entry('Yaw velocity maximum',html.format_number(max(yawVel)),'deg/sec')
    html.add_table_entry('Yaw velocity minimum',html.format_number(min(yawVel)),'deg/sec')
    html.add_table_entry('Longitudinal acceleration maximum',html.format_number(max(accx)),'G')
    html.add_table_entry('Longitudinal acceleration minimum',html.format_number(min(accx)),'G')
    html.add_table_entry('Lateral acceleration maximum',html.format_number(max(accy)),'G')
    html.add_table_entry('Lateral acceleration minimum',html.format_number(min(accy)),'G')

    html.add_plot_entry(x=t,
                        y=swa*180/math.pi,
                        title='Steering Wheel Angle vs Time',
                        xlabel='Time [sec]',
                        ylabel='Steering Wheel Angle [deg]')
    html.add_plot_entry(x=t,
                        y=brake,
                        title='Throttle Demand vs Time', 
                        xlabel='Time [sec]',
                        ylabel='Throttle Demand []')
    html.add_plot_entry(x=t,
                        y=brake,
                        title='Brake Demand vs Time', 
                        xlabel='Time [sec]',
                        ylabel='Brake Demand []')
    html.add_plot_entry(x=t,
                        y=gear,
                        title='Gear Demand vs Time', 
                        xlabel='Time [sec]',
                        ylabel='Gear Demand []')
    html.add_plot_entry(x=t,
                        y=vx,
                        title='Longitudinal Velocity vs Time', 
                        xlabel='Time [sec]',
                        ylabel='Longitudinal Velocity [Km/h]')
    html.add_plot_entry(x=t,
                        y=accx,
                        title='Longitudinal Acceleration vs Time', 
                        xlabel='Time [sec]',
                        ylabel='Longitudinal Acceleration [G]')
    html.add_plot_entry(x=t,
                        y=accy,
                        title='Lateral Acceleration vs Time', 
                        xlabel='Time [sec]',
                        ylabel='Lateral Acceleration [G]')
    html.add_plot_entry(x=t,
                        y=pitch*180/math.pi,
                        title='Pitch Angle vs Time', 
                        xlabel='Time [sec]',
                        ylabel='Pitch [deg]')
    html.add_plot_entry(x=t,
                        y=roll*180/math.pi,
                        title='Roll Angle vs Time', 
                        xlabel='Time [sec]',
                        ylabel='Roll [deg]')

    html.set_title('VI-CarRealTime '+str(eventType))
    
    # Save the HTML report
    output_file = f"{outputPrefix}.html"
    with open(output_file, "w", encoding="utf-8") as file:
        file.write(html.report())

    if os.path.isfile (output_file):
        print(f'Report file "{outputPrefix}" successfully created.')
        return True
    else:
        print(f'ERROR: Creation of file "{outputPrefix}" failed.')
        return False
    
if __name__ == '__main__':  
  arg_count = len(sys.argv)
  if arg_count<3:
    print('usage:',sys.argv[0],'resultFile outputMapFile [systemFile]')
    sys.exit(1)
  resultFile = sys.argv[1]
  if not os.path.exists(resultFile):
    print("Couldn't find result file:  ",resultFile)
    sys.exit()
  outputMapFile = sys.argv[2]
  if not os.path.exists(resultFile):
    print("Couldn't find output map file:  ",outputMapFile)
    sys.exit()
  if arg_count>3:
    systemFile =  sys.argv[3]
  else:
    systemFile = ''
  postProcessing(resultFile, outputMapFile,systemFile)