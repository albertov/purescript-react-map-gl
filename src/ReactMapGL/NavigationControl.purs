module ReactMapGL.NavigationControl where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import ReactMapGL (EventHandlerOpt, UnknownType, Node)
foreign import navigationControlClass :: ReactClass NavigationControlProps
foreign import data NavigationControlOption :: Type
newtype NavigationControlProps = NavigationControlProps Foreign
navigationControlProps :: Options NavigationControlOption -> NavigationControlProps
navigationControlProps = NavigationControlProps <<< options
navigationControl :: Options NavigationControlOption -> Array ReactElement -> ReactElement
navigationControl opts = createElement navigationControlClass (navigationControlProps opts)
