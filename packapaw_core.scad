///////////////////////////////////////////////////////////////////////////////
//
// Core definitions and geometries of the Pack-A-PAW
//
// $Id: packapaw_core.scad 3428 2015-12-02 18:09:21Z rollingcircle $
// $URL: https://rollingcircle.unfuddle.com/svn/rollingcircle_apps/RepRap/Raspberry_Pi_B+/packapaw/packapaw_core.scad $
//
// See https://grabcad.com/library/raspberry-pi-model-b-2
//

//
// The margin between enclosure and Pi board - adjust for specific printers
//
gnBoardMarginW      = 0.8;
gnBoardMarginH      = 0.8;


gnPiBoardW          = 85.0;
gnPiBoardH          = 56.0;

gnFloorT            = 3.0;
gnWallT             = 5.0;
gnCornerR           = 3.0;

gnPiBoardX          = gnWallT + gnBoardMarginW;
gnPiBoardY          = gnWallT + gnBoardMarginH;

//
// Tolerances
//
gnMargin            = 0.1;
gnMargin2           = gnMargin * 2.0;

//
// DVB unit
//
// http://www.ebay.co.uk/itm/Digital-Freeview-USB-DVB-T-HDTV-TV-Dongle-Tuner-Recorder-Receiver-Laptop-PC-Uk-/271430040547?hash=item3f327dbbe3:g:PC0AAOSwNSxVBnvz
//
gnDvbVoidR          = 12.0 / 2.0;  // Measured
gnDvbVoidY          = 20.0;
gnDvbVoidZ          = 23.0;
gnDvbClampX         = 36.0;
gnDvbClampH         = 20.0;
gnDvbClampW         = 7.0;
gnDvbClampD         = 8.0;
gnDvbClampVoidH     = 12.55;
gnDvbClampVoidW     = gnDvbClampW + gnMargin2;
gnDvbClampVoidD     = 3.0;




//
// Standoffs
//
gnStandoffD         = 3.0;
gnStandoffOuterR    = 3.0;
gnStandoffInnerR    = 1.5;
gnStandoffX_1       = gnPiBoardX + 2.5; // Adjusted
gnStandoffY_1       = gnPiBoardY + 3.5;
gnStandoffX_2       = gnPiBoardX + 2.5;
gnStandoffY_2       = gnPiBoardY + 3.5 + 49.5;
gnStandoffX_3       = gnPiBoardX + 3.5 + 58.0;
gnStandoffY_3       = gnPiBoardY + 3.5 + 49.0;
gnStandoffX_4       = gnPiBoardX + 3.5 + 58.0;
gnStandoffY_4       = gnPiBoardY + 3.5;

gnPiBoardZ          = gnFloorT + gnStandoffD;

gnTopD              = 25; //10.56 + gnPiBoardZ; // Base of board to flat upper edge of USB

gnInnerVoidT        = 1.5;

//
// LED void
//
gnLedVoidCentreY    = 46.50; // Pi-relative
gnLedVoidH          = 4.0;
gnLedVoidD          = 4.0;
gnLedVoidZ          = gnFloorT + gnStandoffD;

//
// SD card void
//
gnSDVoidCentreY     = 28.0;  // Pi-relative
gnSDVoidH_O         = 16.0;
gnSDVoidD_O         = 16.0;
gnSDVoidD_I         = 12.0;
gnSDVoidH_I         = 12.0;
gnSDVoidCentreZ     = gnFloorT + (gnSDVoidD_O / 2.0) - 2.0;

//
// USB power void
//
gnPwrVoidCentreX    = 10.6; // Pi-relative
gnPwrVoidCentreZ    = 3.0;  // Pi-relative
gnPwrVoidW_O        = 12.5;
gnPwrVoidD_O        = 8.5;
gnPwrVoidW_I        = 9.0;
gnPwrVoidD_I        = 5.0;

//
// HDMI void
//
gnHdmiVoidCentreX   = 32.0; // Pi-relative
gnHdmiVoidCentreZ   = 5.0;  // Pi-relative
gnHdmiVoidW_O       = 22.5;
gnHdmiVoidD_O       = 12.0;
gnHdmiVoidW_I       = 17.0;
gnHdmiVoidD_I       = 8.0;

//
// Composite void
//
gnCompVoidCentreX   = 53.5; // Pi-relative
gnCompVoidCentreZ   = 4.5;  // Pi-relative
gnCompVoidR_O       = 5.0;
gnCompVoidR_I       = 3.5;

//
// Base vents
//
gnBaseVentW         = 3.0;
lnBaseVentH         = gnPiBoardH / 2.0;
gnBaseVentCount     = 6;

//
// Mid level
//
gnMidLevelD         = 1.0;
gnMidVentW          = 3.0;
gnMidVentH          = gnPiBoardH / 2.0;
gnMidVentCount      = 6;

gnCylFunc           = 24;

//
// Overall dimensions
//
gnCoreW             = gnPiBoardW + (2 * gnBoardMarginW) + (2 * gnWallT);
gnCoreH             = gnPiBoardH + (2 * gnBoardMarginH) + (2 * gnWallT);
gnCoreD             = gnFloorT + gnStandoffD + gnTopD;

//
// Slices
//
gbBaseSliceZ            = 14.99;
gnLowerMidSliceZ        = gnFloorT + gnStandoffD + gnTopD;



//
// Ethernet void
//
gnEthVoidCentreY    = 12.5; // Pi-relative
gnEthVoidCentreZ    = 8.7;   // Pi-relative
gnEthVoidH          = 22.5;
gnEthVoidD          = 15.4;

//
// USB voids
//
gnUsb1VoidCentreY   = 29.0; // Pi-relative
gnUsb2VoidCentreY   = 47.0; // Pi-relative
gnUsbVoidCentreZ    = 9.75; // Pi-relative
gnUsbVoidH          = 16.0;
gnUsbVoidD          = 17.5;

gbUsb2Void          = false;

//
// USB pillars
//
gnUsb1PillarY       = 24.0;
gnUsb2PillarY       = 41.5;
gnUsbPillarWa       = 10.0;
gnUsbPillarWb       = gnCoreW;
gnUsbPillarH        = 1.8;
gnUsbPillarZ        = gnFloorT + gnStandoffD + 3.0;

// 
// Bolt Pillars
//
gnBoltPillarInnerR  = 2.0;
gnBoltPillarOuterR  = 5.0;
gnBoltPillarTaperZ1 = 2.0;
gnBoltPillarTaperZ2 = 10.0;
gnBoltPillarInset   = gnCornerR + gnBoltPillarOuterR; 


// ARF Antenna void
gnArfVoidInnerR     = 3.3;
gnArfVoidOuterR     = 6.5;
gnArfVoidY          = 40.0;
gnArfVoidZ          = 23.0;

//
// GPS unit
//
// http://www.ebay.co.uk/itm/USB-GPS-Receiver-VK-172-Ublox7-Fast-10Hz-GPS-Glonass-RasPi-Win-7-8-CE-Linux-/252080341676?hash=item3ab128c2ac:g:foMAAOSwd0BV6Y6t
//
gnGpsClampX         = 53.5; // 54.3
gnGpsClampMidY      = 51.7;
gnGpsClampH         = 22.0;
gnGpsClampW         = 7.0;
gnGpsClampD         = 6.5;
gnGpsClampVoidH     = 12.45;
gnGpsClampVoidW     = gnGpsClampW + gnMargin2;
gnGpsClampVoidD     = 4.0;
gnGpsClampLipW      = 3.0;
gnGpsClampLipH      = 21.0;
gnGpsClampLipD      = 4.5;
gnGpsClampLipX      = 89.0;
gnGpsClampLipY      = 41.85;
gnGpsClampLipZ      = gnLowerMidSliceZ - gnGpsClampLipD;
gnGpsClampEdgeW     = 10.0;
gnGpsClampEdgeH     = 3.0;
gnGpsClampEdgeD     = 6.0;
gnGpsClampEdgeX     = 84.4;
gnGpsClampEdgeY     = 38.85;
gnGpsClampEdgeZ     = gnLowerMidSliceZ - gnGpsClampEdgeD;





///////////////////////////////////////////////////////////////////////////////



//
// Dvb Clamp
//
module papDvbClamp()
{
  //#
  translate( [ gnDvbClampX
             , gnDvbVoidY - (gnDvbClampH / 2.0)
             , gnLowerMidSliceZ - gnDvbClampD
             ]
           )
  {
    difference()
    {
      cube( [ gnDvbClampW
            , gnDvbClampH
            , gnDvbClampD
            ]
          );
      
      translate( [ -gnMargin
                 , (gnDvbClampH - gnDvbClampVoidH) / 2.0
                 , -gnMargin
                 ]
               )
      {    
        cube( [ gnDvbClampVoidW
              , gnDvbClampVoidH
              , gnDvbClampVoidD
              ]
            );
      }
    }
  }
}

//
// Gps Clamp
//
module papGpsClamp()
{
  //#
  union()
  {
    translate( [ gnGpsClampX
               , gnGpsClampMidY - (gnGpsClampH / 2.0)
               , gnLowerMidSliceZ - gnGpsClampD
               ]
             )
    {
      difference()
      {
        cube( [ gnGpsClampW
              , gnGpsClampH
              , gnGpsClampD
              ]
            );
        
        translate( [ -gnMargin
                   , (gnGpsClampH - gnGpsClampVoidH) / 2.0
                   , -gnMargin
                   ]
                 )
        {    
          cube( [ gnGpsClampVoidW
                , gnGpsClampVoidH
                , gnGpsClampVoidD
                ]
              );
        }
      }
    }
    
    //
    //
    // Lip and edge    
    //#
    translate( [ gnGpsClampLipX
               , gnGpsClampLipY
               , gnGpsClampLipZ
               ]
             )
    {
      cube( [ gnGpsClampLipW
            , gnGpsClampLipH
            , gnGpsClampLipD
            ]
          ); 
    }
    
    //#
    translate( [ gnGpsClampEdgeX
               , gnGpsClampEdgeY
               , gnGpsClampEdgeZ
               ]
             )
    {
      cube( [ gnGpsClampEdgeW
            , gnGpsClampEdgeH
            , gnGpsClampEdgeD
            ]
          ); 
    }
  }
}

//
// Dvb void
//
module papDvbVoid()
{
  translate( [ -gnMargin
             , gnDvbVoidY
             , gnDvbVoidZ
             ]    
           )
  {
    rotate( [ 0.0
            , 90.0
            , 0.0
            ]
          )
    {
      //#
      cylinder( r   = gnDvbVoidR
              , h   = gnWallT + gnMargin2
              , $fn = gnCylFunc
              );       
    }
  }
}

//
// Arf void
//
module papArfVoid()
{
  translate( [ -gnMargin
             , gnArfVoidY
             , gnArfVoidZ
             ]    
           )
  {
    rotate( [ 0.0
            , 90.0
            , 0.0
            ]
          )
    {
      //#
      union()
      {
        cylinder( r   = gnArfVoidInnerR
                , h   = gnWallT + gnMargin2
                , $fn = gnCylFunc
                );
        
        translate( [ 0.0
                   , 0.0
                   , 1.5
                   ]
                 )
        {       
          cylinder( r   = gnArfVoidOuterR
                  , h   = gnWallT + gnMargin2 - 1.5
                  , $fn = gnCylFunc
                  );
                  
        }      
      } 
    }
  
  }
}

//
// Bolt pillar
//
module papBoltPillar(anX, anY)
{
  translate( [ anX
             , anY
             , 0
             ]
           )
  {
    cylinder( r = gnBoltPillarOuterR
            , h = gnCoreD
            , $fn = gnCylFunc
            );
  }  
}

//
// Bolt pillar void
//
module papBoltPillarVoid(anX, anY)
{
  
  //gnBoltPillarTaperZ1 = 2.0;
  //gnBoltPillarTaperZ2 = 10.0;
  //#
  union()
  {
    translate( [ anX
               , anY
               , gnBoltPillarTaperZ1
               ]
             )
    {
      cylinder( r1  = 0.0
              , r2  = gnBoltPillarInnerR
              , h   = gnBoltPillarTaperZ2 - gnBoltPillarTaperZ1 // gnCoreD + gnMargin2
              , $fn = gnCylFunc
              );
    }
    
    translate( [ anX
               , anY
               , gnBoltPillarTaperZ2 - gnMargin
               ]
             )
    {
      cylinder( r = gnBoltPillarInnerR
              , h = gnCoreD + gnMargin2
              , $fn = gnCylFunc
              );
    }
  
  } 
}

//
// USB void
//
module papUsbVoid(anCentreY)
{
  translate( [ gnPiBoardX + gnPiBoardW + gnBoardMarginW - gnMargin
             , gnPiBoardY + anCentreY - (gnUsbVoidH / 2.0)
             , gnPiBoardZ + gnUsbVoidCentreZ - ( gnUsbVoidD / 2.0)
             ]
           )
  {
    cube( [ gnWallT + gnMargin2
          , gnUsbVoidH
          , gnUsbVoidD
          ]
        );
  }  
}

//
// USB side pillar
//
module papUsbPillar(anY)
{
  union()
  {
    translate( [ gnCoreW - gnUsbPillarWa
               , anY - (gnUsbPillarH / 2.0)
               , gnUsbPillarZ
               ]
             )
    {
      cube( [ gnUsbPillarWa
            , gnUsbPillarH
            , gnLowerMidSliceZ - gnUsbPillarZ 
            ]  
          );
    }      
  }
}


//
// Ethernet void
//
module papEthVoid()
{
    translate( [ gnPiBoardX + gnPiBoardW + gnBoardMarginW - gnMargin
               , gnPiBoardY + gnEthVoidCentreY - (gnEthVoidH / 2.0)
               , gnPiBoardZ + gnEthVoidCentreZ - ( gnEthVoidD / 2.0)
               ]
             )
    {
      cube( [ gnWallT + gnMargin2
            , gnEthVoidH
            , gnEthVoidD
            ]
          );
    }  
}

//
// Base Vents
//
module papBaseVent(anX, anZ, anVentProp)
{
  lnBaseVentH = gnCoreH * anVentProp;
  
  translate( [ anX
             , (gnCoreH - lnBaseVentH) / 2.0
             , -gnMargin + anZ
             ]
           )
  {
    union()
    {
      cylinder ( r   = gnBaseVentW / 2.0
               , h   = gnFloorT + gnMargin2
               , $fn = gnCylFunc
               );
      
      translate( [ 0.0
                 , lnBaseVentH
                 , 0.0
                 ]
               )
      {         
      cylinder ( r   = gnBaseVentW / 2.0
               , h   = gnFloorT + gnMargin2
               , $fn = gnCylFunc
               );
      }
      
      translate( [ -gnBaseVentW / 2.0
                 , 0.0
                 , 0.0
                 ]
               )
      {
        cube( [ gnBaseVentW
              , lnBaseVentH
              , gnFloorT + gnMargin2
              ]
            );
      }
    }
  }
}

//
// Corner void
//
module papCornerVoid(anX, anY)
{
  translate( [ anX
             , anY
             , -gnMargin
             ]
           )
  {
    cube( [ gnCornerR
          , gnCornerR
          , gnCoreD + gnMargin2
          ]
        );
  }
}

//
// Corner curve
//
module papCorner(anX, anY)
{
  translate( [ anX
             , anY
             , 0
             ]
           )
  {
    cylinder( r = gnCornerR
            , h = gnCoreD
            , $fn = gnCylFunc
            );
  }
}

//
// Composite void
//
module papCompVoid()
{
    translate( [ gnPiBoardX + gnCompVoidCentreX
               , -gnMargin
               , gnPiBoardZ + gnCompVoidCentreZ
               ]
             )
  {
    rotate( [ -90.0
            , 0.0
            , 0.0
            ]
          )
    {
      union()
      {
        cylinder( r   = gnCompVoidR_O
                , h   = gnWallT + gnMargin2 - gnInnerVoidT
                , $fn = gnCylFunc
                );
                
        cylinder( r   = gnCompVoidR_I
                , h   = gnWallT + gnMargin2
                , $fn = gnCylFunc
                );
      }
    }
  }
}

//
// HDMI void
//
module papHdmiVoid()
{
  union()
  {
    translate( [ gnPiBoardX + gnHdmiVoidCentreX - ( gnHdmiVoidW_O / 2.0)
               , -gnMargin
               , gnPiBoardZ + gnHdmiVoidCentreZ - ( gnHdmiVoidD_O / 2.0)
               ]
             )
    {
      cube( [ gnHdmiVoidW_O
            , gnWallT + gnMargin2 - gnInnerVoidT
            , gnHdmiVoidD_O
            ]
          );
    }
    
    translate( [ gnPiBoardX + gnHdmiVoidCentreX - ( gnHdmiVoidW_I / 2.0)
               , -gnMargin
               , gnPiBoardZ + gnHdmiVoidCentreZ - ( gnHdmiVoidD_I / 2.0)
               ]
             )
    {
      cube( [ gnHdmiVoidW_I
            , gnWallT + gnMargin2
            , gnHdmiVoidD_I
            ]
          );
    }
  }
}


//
// USB power void
//
module papPwrVoid()
{
  union()
  {
    translate( [ gnPiBoardX + gnPwrVoidCentreX - ( gnPwrVoidW_O / 2.0)
               , -gnMargin
               , gnPiBoardZ + gnPwrVoidCentreZ - ( gnPwrVoidD_O / 2.0)
               ]
             )
    {
      cube( [ gnPwrVoidW_O
            , gnWallT + gnMargin2 - gnInnerVoidT
            , gnPwrVoidD_O
            ]
          );
    }
    
    translate( [ gnPiBoardX + gnPwrVoidCentreX - ( gnPwrVoidW_I / 2.0)
               , -gnMargin
               , gnPiBoardZ + gnPwrVoidCentreZ - ( gnPwrVoidD_I / 2.0)
               ]
             )
    {
      cube( [ gnPwrVoidW_I
            , gnWallT + gnMargin2
            , gnPwrVoidD_I
            ]
          );
    }
  }
}


//
// SD card void
//
module papSDvoid()
{
  union()
  {
    translate( [ -gnMargin
               , gnSDVoidCentreY - ( gnSDVoidH_O / 2) + gnPiBoardY
               , gnSDVoidCentreZ - (gnSDVoidD_O / 2.0)
               ]
             )
    {
      cube( [ gnWallT + gnMargin2 - gnInnerVoidT
            , gnSDVoidH_O
            , gnSDVoidD_O
            ]
          );
    }
    //#
    translate( [ -gnMargin
               , gnSDVoidCentreY - ( gnSDVoidH_I / 2) + gnPiBoardY
               , gnSDVoidCentreZ - (gnSDVoidD_I / 2.0)
               ]
             )
    {
      cube( [ gnWallT + gnMargin2
            , gnSDVoidH_I
            , gnSDVoidD_I
            ]
          );
    }
  
  }
}

//
// LED void
//
module papLedVoid()
{
  translate( [ -gnMargin
             , gnLedVoidCentreY - ( gnLedVoidH / 2) + gnPiBoardY
             , gnLedVoidZ
             ]
           )
  {
    cube( [ gnWallT + gnMargin2
          , gnLedVoidH
          , gnLedVoidD
          ]
        );
  }
}

//
// Standoffs from floor
//
module papStandoff(anX, anY)
{
  translate( [ anX
             , anY
             , gnFloorT
             ]
           )
  {
    difference()
    {
      cylinder( r   = gnStandoffOuterR
              , h   = gnStandoffD
              , $fn = gnCylFunc
              );
  
      cylinder( r   = gnStandoffInnerR
              , h   = gnStandoffD + gnMargin
              , $fn = gnCylFunc
              );            
      
    }
  }
}

//
// Mid level
//
module papUpperFloor()
{
  difference()
  {
    translate( [ gnWallT - gnMargin
               , gnWallT - gnMargin
               , gnLowerMidSliceZ - gnMidLevelD //+ gnFloorT + gnStandoffD - 
               ]
             )
    {
      cube( [ gnCoreW - ( 2.0 * gnWallT) + gnMargin
            , gnCoreH - ( 2.0 * gnWallT) + gnMargin
            , gnMidLevelD
            ]
          );   
    }
    
    for (lnIdx = [1:gnBaseVentCount])
    {
      papBaseVent( (gnCoreW / (gnBaseVentCount + 1)) * lnIdx, gnLowerMidSliceZ - gnMidLevelD, 0.8);
    }
  
  }
}


//
// The core module, including port voids
//
module papCore()
{
  union() // Shell plus Standoffs
  {
    difference() // Outer shell / Inner Void / 
    {
      union()
      {
        difference()
        {
          // Outer shell
          cube( [ gnCoreW
                , gnCoreH
                , gnCoreD
                ]
              );
              
          // Corner voids
          papCornerVoid(-gnMargin, -gnMargin);
          papCornerVoid(gnCoreW -gnCornerR + gnMargin, -gnMargin);
          papCornerVoid(gnCoreW -gnCornerR + gnMargin, gnCoreH -gnCornerR + gnMargin);
          papCornerVoid(-gnMargin, gnCoreH -gnCornerR + gnMargin);
        }
            
        // Corners
        papCorner(gnCornerR, gnCornerR);
        papCorner(gnCoreW - gnCornerR, gnCornerR);
        papCorner(gnCoreW - gnCornerR, gnCoreH - gnCornerR);
        papCorner(gnCornerR, gnCoreH - gnCornerR);
        
        //  Bolt pillars
        papBoltPillar(0.0, gnBoltPillarInset);
        papBoltPillar(0.0, gnCoreH - gnBoltPillarInset);
        papBoltPillar(gnCoreW - gnBoltPillarInset, 0.0);
        papBoltPillar(gnCoreW - gnBoltPillarInset, gnCoreH);    
      }

      // Inner void
      translate( [ gnWallT
                 , gnWallT
                 , gnFloorT
                 ]
               )
      {
        cube( [ gnPiBoardW + (gnBoardMarginW * 2.0)
              , gnPiBoardH + (gnBoardMarginH * 2.0)
              , gnCoreD
              ]
            );
      }
      
      // LED void
      papLedVoid();
      
      // SD void
      papSDvoid();
      
      // USB Power void
      papPwrVoid();
      
      // HDMI void
      papHdmiVoid();
      
      // Composite void
      papCompVoid();
      
      // Base vents
      for (lnIdx = [1:gnBaseVentCount])
      {
        papBaseVent( (gnCoreW / (gnBaseVentCount + 1)) * lnIdx, 0, 0.5);
      }
      
      // Ethernet void
      papEthVoid();
      
      // USB void
      papUsbVoid(gnUsb1VoidCentreY);
      
      if (gbUsb2Void)
      {
        papUsbVoid(gnUsb2VoidCentreY);
      }
      
      // Bolt voids
      papBoltPillarVoid(0.0, gnBoltPillarInset);
      papBoltPillarVoid(0.0, gnCoreH - gnBoltPillarInset);
      papBoltPillarVoid(gnCoreW - gnBoltPillarInset, 0.0);
      papBoltPillarVoid(gnCoreW - gnBoltPillarInset, gnCoreH);
      
      // ARF void
      papArfVoid();
      
      // DVB void
      papDvbVoid();
      

         
    } // Outer shell / Inner Void
    
    // Standoffs
    papStandoff(gnStandoffX_1, gnStandoffY_1);
    papStandoff(gnStandoffX_2, gnStandoffY_2);
    papStandoff(gnStandoffX_3, gnStandoffY_3);
    papStandoff(gnStandoffX_4, gnStandoffY_4);
    
    papDvbClamp();
    
    papGpsClamp();
    
    papUpperFloor();

    
    
  } // Shell plus Standoffs
}

//
// GrabCAD PI design, referenced to bottom left.
//
module papReferenceBoard()
{
  #
  translate( [ 159.1 + gnPiBoardX
             , 27.05 + gnPiBoardY
             , gnPiBoardZ
             ]
           )
  {
    import("STL_raspberrypi_b_+_(assembly).STL");
  }
}

module papSlice(anLowZ, anHighZ)
{
  difference()
  {
    papCore();
    
    translate( [ -gnMargin - gnBoltPillarOuterR
               , -gnMargin - gnBoltPillarOuterR
               , anHighZ
               ]
             )
    {
      //#
      cube( [ gnCoreW + gnMargin2 + (gnBoltPillarOuterR * 2.0)
            , gnCoreH + gnMargin2 + (gnBoltPillarOuterR * 2.0)
            , gnCoreD + gnMargin2 
            ]
          );
    }
    
    translate( [ -gnMargin - gnBoltPillarOuterR
               , -gnMargin - gnBoltPillarOuterR
               , anLowZ - gnCoreD - gnMargin2
               ]
             )
    {
      //#
      cube( [ gnCoreW + gnMargin2 + (gnBoltPillarOuterR * 2.0)
            , gnCoreH + gnMargin2 + (gnBoltPillarOuterR * 2.0)
            , gnCoreD + gnMargin2 
            ]
          );
    }
  }
}

module papBase()
{
  papSlice(0, gbBaseSliceZ);
}

module papTop()
{
  union()
  {
    papSlice(gbBaseSliceZ, gnLowerMidSliceZ);
    
    // USB pillars
    /*
    papUsbPillar(gnUsb1PillarY);
    
    if (gbUsb2Void)
    {
      papUsbPillar(gnUsb2PillarY);
    }
    */
  }
}

union()
{
  papCore();
  
  // USB pillars
  papUsbPillar(gnUsb1PillarY);
  
  if (gbUsb2Void)
  {
    papUsbPillar(gnUsb2PillarY);
  }
  
  //papReferenceBoard();
}

// $Id: packapaw_core.scad 3428 2015-12-02 18:09:21Z rollingcircle $
///////////////////////////////////////////////////////////////////////////////



