local function Box(
    initialPosition,
    initialSize,
    initialBGColorKey,
    initialBGFillColorKey,
    shouldShadow,
    initialShadowColorKey,
    initialTransparentOverride)
    local self = {}
    local relativePosition = initialPosition
    local position = relativePosition
    local size = nil
    local shadowed = shouldShadow
    local shadowColorKey = initialShadowColorKey
    if initialSize ~= nil then
        size = initialSize
    end
    local backgroundColorKey = initialBGColorKey
    local backgroundFillColorKey = initialBGFillColorKey
    local transparentOverride = initialTransparentOverride

    function self.move(newPosition)
        position.x = newPosition.x
        position.y = newPosition.y
        relativePosition.x = newPosition.x
        relativePosition.y = newPosition.y
    end

    function self.calculateActualPosition(parentPosition)
        position = {
            x = parentPosition.x + relativePosition.x,
            y = parentPosition.y + relativePosition.y
        }
    end

    function self.shift(xAmount, yAmount)
        relativePosition = {
            x = relativePosition.x + xAmount,
            y = relativePosition.y + yAmount
        }
    end

    function self.getPosition()
        return {x = position.x, y = position.y}
    end

    function self.getSize()
        return {width = size.width, height = size.height}
    end

    function self.resize(newSize)
        size.width = newSize.width
        size.height = newSize.height
    end

    function self.setBackgroundColorKey(newColorKey)
        backgroundColorKey = newColorKey
    end

    function self.getBackgroundColor()
        if size ~= nil and backgroundColorKey ~= nil then
            return DrawingUtils.convertColorKeyToColor(backgroundColorKey, transparentOverride)
        else
            return 0x00000000
        end
    end

    function self.getBackgroundFillColor()
        if backgroundFillColorKey ~= nil and size ~= nil then
            return DrawingUtils.convertColorKeyToColor(backgroundFillColorKey)
        else
            return 0x00000000
        end
    end

    function self.setBackgroundFillColorKey(newBackgroundFillColorKey)
        backgroundFillColorKey = newBackgroundFillColorKey
    end

    function self.show()
        if size ~= nil then
            local shadowColor = nil
            if shadowColorKey ~= nil then
                shadowColor = DrawingUtils.calcShadowColor(shadowColorKey)
            end
            DrawingUtils.drawBox(
                position.x,
                position.y,
                size.width,
                size.height,
                self.getBackgroundFillColor(),
                self.getBackgroundColor(),
                shadowed,
                shadowColor
            )
        end
    end

    return self
end

return Box
