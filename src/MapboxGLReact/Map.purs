module MapboxGLReact.Map where
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
accessToken :: Option ComponentOption (String)
accessToken = opt "accessToken"
style :: Option ComponentOption (String)
style = opt "style"
center :: Option ComponentOption (UnknownType)
center = opt "center" -- arrayOf
zoom :: Option ComponentOption (Number)
zoom = opt "zoom"
children :: Option ComponentOption (Node)
children = opt "children"
containerStyle :: Option ComponentOption (UnknownType)
containerStyle = opt "containerStyle" -- object
bearing :: Option ComponentOption (Number)
bearing = opt "bearing"
pitch :: Option ComponentOption (Number)
pitch = opt "pitch"
options_ :: Option ComponentOption (UnknownType)
options_ = opt "options" -- shape
eventHandlers :: Option ComponentOption (UnknownType)
eventHandlers = opt "eventHandlers" -- shape
