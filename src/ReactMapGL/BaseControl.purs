module ReactMapGL.BaseControl where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import ReactMapGL (EventHandlerOpt, UnknownType, Node)
foreign import baseControlClass :: ReactClass BaseControlProps
foreign import data BaseControlOption :: Type
newtype BaseControlProps = BaseControlProps Foreign
baseControlProps :: Options BaseControlOption -> BaseControlProps
baseControlProps = BaseControlProps <<< options
baseControl :: Options BaseControlOption -> Array ReactElement -> ReactElement
baseControl opts = createElement baseControlClass (baseControlProps opts)
captureScroll :: Option BaseControlOption (Boolean)
captureScroll = opt "captureScroll"
captureDrag :: Option BaseControlOption (Boolean)
captureDrag = opt "captureDrag"
captureClick :: Option BaseControlOption (Boolean)
captureClick = opt "captureClick"
captureDoubleClick :: Option BaseControlOption (Boolean)
captureDoubleClick = opt "captureDoubleClick"
