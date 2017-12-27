module MapboxGLReact.Layer where
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
type' :: Option ComponentOption (UnknownType)
type' = opt "type" -- enum
paint :: Option ComponentOption (UnknownType)
paint = opt "paint" -- object
layout :: Option ComponentOption (UnknownType)
layout = opt "layout" -- object
filter :: Option ComponentOption (UnknownType)
filter = opt "filter" -- array
