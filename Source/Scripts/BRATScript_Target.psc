Scriptname BRATScript_Target extends ObjectReference

ObjectReference dummyLeft
ObjectReference dummyRight

Event OnActivate(ObjectReference akActionRef)
    SetAngle(0.0, 0.0, GetAngleZ())

    Form dummy = Game.GetForm(0xD19BA)

    If ! dummyLeft
        dummyLeft = PlaceAtMe(dummy)
    EndIf

    If ! dummyRight
        dummyRight = PlaceAtMe(dummy)
    EndIf

    Float offX = -1.761719
    Float offY = -20.261719
    Float offZ = 157.123566
    Float angle = GetAngleZ()

    Float posX = offX * Math.cos(-angle) + offY * Math.sin(angle)
    Float posY = offX * Math.sin(-angle) + offY * Math.cos(-angle)
    Float posZ = offZ

    dummyLeft.MoveTo(Self, posX, posY, posZ)

    offX = 1.755859
    offY = -20.261719
    offZ = 157.123596
    angle = GetAngleZ()

    posX = offX * Math.cos(-angle) + offY * Math.sin(angle)
    posY = offX * Math.sin(-angle) + offY * Math.cos(-angle)
    posZ = offZ

    dummyRight.MoveTo(Self, posX, posY, posZ)
EndEvent
