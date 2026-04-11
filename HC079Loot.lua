local GameObject = CS.UnityEngine.GameObject
local Vector3 = CS.UnityEngine.Vector3
local Quaternion = CS.UnityEngine.Quaternion

---@class HC079Loot:CS.Akequ.Base.Room
HC079Loot = {}

function HC079Loot:Init()
    if self.main.netEvent.isServer then
        room = GameObject.Find("Map_HC_079(Clone)")

        if room == nil then return end

        obj = CS.ResourcesManager.SpawnItem("AK12")
        obj.transform.parent = room.transform
        obj.transform.localPosition = Vector3(5.63, -3.07, 2.56)
        obj.transform.localRotation = Quaternion.Euler(0, 111, 90)

        obj = CS.ResourcesManager.SpawnItem("FragGrenade")
        obj.transform.parent = room.transform
        obj.transform.localPosition = Vector3(5.43, -3.04, 3.17)
        obj.transform.localRotation = Quaternion.Euler(0, 0, -90)

        obj = CS.ResourcesManager.SpawnItem("BreakingCard")
        obj.transform.parent = room.transform
        obj.transform.localPosition = Vector3(5.9, -3.08, 2.82)
        obj.transform.localRotation = Quaternion.Euler(0, 144, 0)

        obj = CS.ResourcesManager.SpawnItem("SeniorEngineerCard")
        obj.transform.parent = room.transform
        obj.transform.localPosition = Vector3(5.31, -3.08, 4.23)
        obj.transform.localRotation = Quaternion.Euler(0, 60, 0)

        obj = CS.ResourcesManager.SpawnItem("Ammo.A545x39")
        obj.transform.parent = room.transform
        obj.transform.localPosition = Vector3(5.83, -3.07, 2.27)
        obj.transform.localRotation = Quaternion.Euler(0, -31, 0)

        obj = CS.ResourcesManager.SpawnItem("Ammo.A545x39")
        obj.transform.parent = room.transform
        obj.transform.localPosition = Vector3(5.83, -2.97, 2.27)
        obj.transform.localRotation = Quaternion.Euler(0, 25, 0)
    end
end

return HC079Loot