module ReactMapGL.Marker where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import ReactMapGL (EventHandlerOpt, UnknownType, Node)
foreign import markerClass :: ReactClass MarkerProps
foreign import data MarkerOption :: Type
newtype MarkerProps = MarkerProps Foreign
markerProps :: Options MarkerOption -> MarkerProps
markerProps = MarkerProps <<< options
marker :: Options MarkerOption -> Array ReactElement -> ReactElement
marker opts = createElement markerClass (markerProps opts)
