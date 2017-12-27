module ReactMapGL.Popup where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import ReactMapGL (EventHandlerOpt, UnknownType, Node)
foreign import popupClass :: ReactClass PopupProps
foreign import data PopupOption :: Type
newtype PopupProps = PopupProps Foreign
popupProps :: Options PopupOption -> PopupProps
popupProps = PopupProps <<< options
popup :: Options PopupOption -> Array ReactElement -> ReactElement
popup opts = createElement popupClass (popupProps opts)
