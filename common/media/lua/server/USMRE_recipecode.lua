local function addItemsToInventory(character, yieldDict, itemType, resultType, amount, grantedItems)
  for _, yieldItem in ipairs(yieldDict) do
    if itemType == yieldItem and not grantedItems[resultType] then
      character:getInventory():AddItems(resultType, amount)
      grantedItems[resultType] = true
    end
  end
end

function OnOpenMREPacket(craftRecipeData, character)
  print("OnOpenMREPacket: "..tostring(craftRecipeData:getAllConsumedItems()))
  local item = craftRecipeData:getAllConsumedItems():get(0);
  local itemType = item:getType();

  local MREJelly = {
    [1] = "MREmenu01",
    [2] = "MREmenu02",
    [3] = "MREmenu08",
    [4] = "MREmenu12",
  }

  local MREApplesauce = {
    [1] = "MREmenu01",
    [2] = "MREmenu12",
  }

  local MRECandy1 = {
    [1] = "MREmenu01",
    [2] = "MREmenu03",
    [3] = "MREmenu05",
    [4] = "MREmenu06",
    [5] = "MREmenu10",
    [6] = "MREmenu11",
  }

  local MRECocoa = {
    [1] = "MREmenu01",
    [2] = "MREmenu02",
    [3] = "MREmenu03",
    [4] = "MREmenu04",
    [5] = "MREmenu06",
    [6] = "MREmenu08",
    [7] = "MREmenu12",
  }

  local MRESugarFreeBevBase = {
    [1] = "MREmenu01",
    [2] = "MREmenu02",
    [3] = "MREmenu04",
    [4] = "MREmenu05",
    [5] = "MREmenu06",
    [6] = "MREmenu12",
  }

  local MREAccessoryPacketA = {
    [1] = "MREmenu04",
    [2] = "MREmenu05",
    [3] = "MREmenu06",
    [4] = "MREmenu07",
    [5] = "MREmenu08",
    [6] = "MREmenu09",
    [7] = "MREmenu10",
    [8] = "MREmenu11",
    [9] = "MREmenu12",
  }
  local MREAccessoryPacketB = {
    [1] = "MREmenu01",
    [2] = "MREmenu02",
    [3] = "MREmenu03",
  }

  local MREFreezedriedfruit = {
    [1] = "MREmenu02",
    [2] = "MREmenu03",
    [3] = "MREmenu06",
    [4] = "MREmenu09",
    [5] = "MREmenu11",
  }

  local MREOatmealCookieBar = {
    [1] = "MREmenu02",
  }

  local MREPeanutButter = {
    [1] = "MREmenu03",
    [2] = "MREmenu06",
    [3] = "MREmenu07",
    [4] = "MREmenu09",
  }

  local MREBevBasewithSugar = {
    [1] = "MREmenu03",
    [2] = "MREmenu07",
    [3] = "MREmenu08",
    [4] = "MREmenu09",
    [5] = "MREmenu10",
    [6] = "MREmenu11",
  }

  local MRECheesespread = {
    [1] = "MREmenu04",
    [2] = "MREmenu05",
    [3] = "MREmenu10",
    [4] = "MREmenu11",
  }

  local MREPotatoesAuGrautin = {
    [1] = "MREmenu04",
    [2] = "MREmenu08",
  }

  local MRECandy2 = {
    [1] = "MREmenu04",
  }

  local MREPoundCake = {
    [1] = "MREmenu05",
    [2] = "MREmenu07",
    [3] = "MREmenu10",
  }

  local MREBrownieChocCovered = {
    [1] = "MREmenu08",
    [2] = "MREmenu11",
  }

  local MRECookieChocCovered = {
    [1] = "MREmenu09",
    [2] = "MREmenu11",
  }

  local grantedItems = {}

  addItemsToInventory(character, MREJelly, itemType, "USMRE.MREJelly", 1, grantedItems);
  addItemsToInventory(character, MREApplesauce, itemType, "USMRE.MREApplesauce", 1, grantedItems);
  addItemsToInventory(character, MRECandy1, itemType, "USMRE.MRECandy1", 1, grantedItems);
  addItemsToInventory(character, MRECocoa, itemType, "USMRE.MRECocoa", 1, grantedItems);
  addItemsToInventory(character, MRESugarFreeBevBase, itemType, "USMRE.MRESugarFreeBevBase", 1, grantedItems);
  addItemsToInventory(character, MREAccessoryPacketA, itemType, "USMRE.MREAccessoryPacketA", 1, grantedItems);
  addItemsToInventory(character, MREAccessoryPacketB, itemType, "USMRE.MREAccessoryPacketB", 1, grantedItems);
  addItemsToInventory(character, MREFreezedriedfruit, itemType, "USMRE.MREFreezedriedfruit", 1, grantedItems);
  addItemsToInventory(character, MREOatmealCookieBar, itemType, "USMRE.MREOatmealCookieBar", 1, grantedItems);
  addItemsToInventory(character, MREPeanutButter, itemType, "USMRE.MREPeanutButter", 1, grantedItems);
  addItemsToInventory(character, MREBevBasewithSugar, itemType, "USMRE.MREBevBasewithSugar", 1, grantedItems);
  addItemsToInventory(character, MRECheesespread, itemType, "USMRE.MRECheesespread", 1, grantedItems);
  addItemsToInventory(character, MREPotatoesAuGrautin, itemType, "USMRE.MREPotatoesAuGrautin", 1, grantedItems);
  addItemsToInventory(character, MRECandy2, itemType, "USMRE.MRECandy2", 1, grantedItems);
  addItemsToInventory(character, MREPoundCake, itemType, "USMRE.MREPoundCake", 1, grantedItems);
  addItemsToInventory(character, MREBrownieChocCovered, itemType, "USMRE.MREBrownieChocCovered", 1, grantedItems);
  addItemsToInventory(character, MRECookieChocCovered, itemType, "USMRE.MRECookieChocCovered", 1, grantedItems);
end

function OnOpenMREAccessoryPacket(craftRecipeData, character)
  local item = craftRecipeData:getAllConsumedItems():get(0);
	local itemType = item:getType();

	local yieldDict1 = {
		[1] = "MREAccessoryPacketB",
	};

  local grantedItems = {}

	addItemsToInventory(character, yieldDict1, itemType, "USMRE.MRECandy3", 1, grantedItems);
end

function RemoveMREboxfrompallet(craftRecipeData, character)
  local item = craftRecipeData:getAllConsumedItems():get(0);
	local itemType = item:getType();

	local yieldDict01 = { [1] = "MREboxPallet01", }
  local yieldDict02 = { [1] = "MREboxPallet02", }
  local yieldDict03 = { [1] = "MREboxPallet03", }
  local yieldDict04 = { [1] = "MREboxPallet04", }
  local yieldDict05 = { [1] = "MREboxPallet05", }
  local yieldDict06 = { [1] = "MREboxPallet06", }
  local yieldDict07 = { [1] = "MREboxPallet07", }
  local yieldDict08 = { [1] = "MREboxPallet08", }
  local yieldDict09 = { [1] = "MREboxPallet09", }
  local yieldDict10 = { [1] = "MREboxPallet10", }
  local yieldDict11 = { [1] = "MREboxPallet11", }
  local yieldDict12 = { [1] = "MREboxPallet12", }

  local grantedItems = {}

  addItemsToInventory(character, yieldDict01, itemType, "USMRE.MREbox", 1, grantedItems);
  addItemsToInventory(character, yieldDict02, itemType, "USMRE.MREbox", 2, grantedItems);
  addItemsToInventory(character, yieldDict03, itemType, "USMRE.MREbox", 3, grantedItems);
  addItemsToInventory(character, yieldDict04, itemType, "USMRE.MREbox", 4, grantedItems);
  addItemsToInventory(character, yieldDict05, itemType, "USMRE.MREbox", 5, grantedItems);
  addItemsToInventory(character, yieldDict06, itemType, "USMRE.MREbox", 6, grantedItems);
  addItemsToInventory(character, yieldDict07, itemType, "USMRE.MREbox", 7, grantedItems);
  addItemsToInventory(character, yieldDict08, itemType, "USMRE.MREbox", 8, grantedItems);
  addItemsToInventory(character, yieldDict09, itemType, "USMRE.MREbox", 9, grantedItems);
  addItemsToInventory(character, yieldDict10, itemType, "USMRE.MREbox", 10, grantedItems);
  addItemsToInventory(character, yieldDict11, itemType, "USMRE.MREbox", 11, grantedItems);
  addItemsToInventory(character, yieldDict12, itemType, "USMRE.MREbox", 12, grantedItems);
end
