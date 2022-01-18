# Moving Rainbow Gradient Text
Moving rainbow gradient text using string patterns for gui objects with text-rendering properties. The effect is done using an equation I came up with using trig functions. Originally made as a solution to a [DevForum question](https://devforum.roblox.com/t/481569/11).

## Parameters
| Name | Type | Description |
| ----------- | ----------- | ----------- |
| ```guiObject``` | [GuiObject](https://developer.roblox.com/api-reference/class/GuiObject) | The GuiObject that will display the effect on its text. |
| ```frequency``` | Number | An optional parameter for the amount of time it takes to repeat the color sequence. |

## Code Sample
To run this function, simply call it in the same format as the following code.
```lua
task.spawn(require(RainbowText), guiObject, frequency)
```
