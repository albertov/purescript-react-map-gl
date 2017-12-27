module ReactMapGL.StaticMap where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import ReactMapGL (EventHandlerOpt, UnknownType, Node)
foreign import staticMapClass :: ReactClass StaticMapProps
foreign import data StaticMapOption :: Type
newtype StaticMapProps = StaticMapProps Foreign
staticMapProps :: Options StaticMapOption -> StaticMapProps
staticMapProps = StaticMapProps <<< options
staticMap :: Options StaticMapOption -> Array ReactElement -> ReactElement
staticMap opts = createElement staticMapClass (staticMapProps opts)
