module MapboxGLReact.Reticle where
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
className :: Option ComponentOption (String)
className = opt "className"
style :: Option ComponentOption (UnknownType)
style = opt "style" -- object
