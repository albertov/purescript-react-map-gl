module MapboxGLReact.SymbolsLayer where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MapboxGLReact (EventHandlerOpt, UnknownType, Node)
foreign import componentClass :: ReactClass ComponentProps
foreign import data ComponentOption :: Type
newtype ComponentProps = ComponentProps Foreign
componentProps :: Options ComponentOption -> ComponentProps
componentProps = ComponentProps <<< options
component :: Options ComponentOption -> Array ReactElement -> ReactElement
component opts = createElement componentClass (componentProps opts)
image :: Option ComponentOption (String)
image = opt "image"
size :: Option ComponentOption (Number)
size = opt "size"
color :: Option ComponentOption (String)
color = opt "color"
offset :: Option ComponentOption (UnknownType)
offset = opt "offset" -- array
opacity :: Option ComponentOption (Number)
opacity = opt "opacity"
padding :: Option ComponentOption (Number)
padding = opt "padding"
paint :: Option ComponentOption (UnknownType)
paint = opt "paint" -- object
layout :: Option ComponentOption (UnknownType)
layout = opt "layout" -- object
