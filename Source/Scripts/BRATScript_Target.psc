Scriptname BRATScript_Target extends ObjectReference

Event OnActivate(ObjectReference akActionRef)
    Debug.MessageBox("Activated by " + akActionRef)
EndEvent
