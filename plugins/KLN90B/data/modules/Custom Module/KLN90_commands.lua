function KLNpowerc_handler(phase) -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
    if 0 == phase then
        if power_knob == 1 then
            power_knob = 0
        else
            power_knob = 1
        end
        set(power_but, power_knob);
        sasl.al.playSample(power_click, false)
    end
    return false
end

function KLNincbrtc_handler(phase) -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
    if 0 == phase then
        brt = brt + 0.1
        if (brt <= 1.0) then
            set(display_brughtness, brt)
        end
    end

    return false
end

function KLNdecbrtc_handler(phase) -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
    if 0 == phase then
        brt = brt - 0.1
        if (brt > 0) then
            set(display_brughtness, brt);
        end
    end

    return false
end

function KLNRCRSRc_handler(phase) -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
    if 0 == phase then
        if controls["rspage"] == 0 then
            if controls["rCRSR"] == 1 then
                controls["rCRSR"] = 0
            else
                controls["rCRSR"] = 1
            end
        end
        sasl.al.playSample(button_click, false)
    end
    return false
end

function KLNSCANc_handler(phase) -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
    if 0 == phase then
      if controls["SCAN"] == 1 then
        controls["SCAN"] = 0
      else
        controls["SCAN"] = 1
      end
      set(scan_mode, controls["SCAN"]);
      sasl.al.playSample(pull_click, false)
    end
    return false
  end

  function KLNlknoblccc_handler(phase) -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
    if 0 == phase then
      controls["lknobl"] = -1
  
      controls["blknobsangle"] = controls["blknobsangle"] - 1
      set(B_L_Angle_3D, controls["blknobsangle"])
      sasl.al.playSample(rotary_click, false)
    end
    return false
  end

  function KLNlknobsccc_handler(phase) -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
    if 0 == phase then
      controls["lknobs"] = -1
      controls["lknobsangle"] = controls["lknobsangle"] - 1
      set(L_Angle_3D, controls["lknobsangle"])
      sasl.al.playSample(rotary_click_s, false)
    end
    return false
  end

  function KLNlknoblcc_handler(phase) -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
    if 0 == phase then
      controls["lknobl"] = 1
  
      controls["blknobsangle"] = controls["blknobsangle"] + 1
      set(B_L_Angle_3D, controls["blknobsangle"])
      sasl.al.playSample(rotary_click, false)
    end
    return false
  end

  function KLNMSGc_handler(phase) -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
    if 0 == phase then
      if rpage > 0 then
        if controls["MSG"] == 1 then
          if values["MSGLIST"]["length"] > 6 then
            table.remove(values["MSGLIST"], 1)
            table.remove(values["MSGLIST"], 1)
            table.remove(values["MSGLIST"], 1)
            table.remove(values["MSGLIST"], 1)
            table.remove(values["MSGLIST"], 1)
            table.remove(values["MSGLIST"], 1)
            values["MSGLIST"]["length"] = values["MSGLIST"]["length"] - 6
          else
            controls["MSG"] = 0
            values["MSGLIST"] = {}
            values["MSGLIST"]["length"] = 0
          end
        else
          controls["MSG"] = 1
        end
      end
      sasl.al.playSample(button_click, false)
    end
    return false
  end