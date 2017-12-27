module MapboxGLReact.Source where
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
name :: Option ComponentOption (String)
name = opt "name"
data_ :: Option ComponentOption (UnknownType)
data_ = opt "data" -- union
children :: Option ComponentOption (UnknownType)
children = opt "children" -- union
options_ :: Option ComponentOption (UnknownType)
options_ = opt "options" -- shape
