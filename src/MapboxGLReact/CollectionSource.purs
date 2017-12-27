module MapboxGLReact.CollectionSource where
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
collection :: Option ComponentOption (UnknownType)
collection = opt "collection" -- array
coordinates :: Option ComponentOption (UnknownType)
coordinates = opt "coordinates" -- array
properties :: Option ComponentOption (UnknownType)
properties = opt "properties" -- array
options_ :: Option ComponentOption (UnknownType)
options_ = opt "options" -- object
