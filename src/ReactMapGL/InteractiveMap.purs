module ReactMapGL.InteractiveMap where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import ReactMapGL (EventHandlerOpt, UnknownType, Node)
foreign import interactiveMapClass :: ReactClass InteractiveMapProps
foreign import data InteractiveMapOption :: Type
newtype InteractiveMapProps = InteractiveMapProps Foreign
interactiveMapProps :: Options InteractiveMapOption -> InteractiveMapProps
interactiveMapProps = InteractiveMapProps <<< options
interactiveMap :: Options InteractiveMapOption -> Array ReactElement -> ReactElement
interactiveMap opts = createElement interactiveMapClass (interactiveMapProps opts)
