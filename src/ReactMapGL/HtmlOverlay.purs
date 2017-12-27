module ReactMapGL.HtmlOverlay where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import ReactMapGL (EventHandlerOpt, UnknownType, Node)
foreign import htmlOverlayClass :: ReactClass HtmlOverlayProps
foreign import data HtmlOverlayOption :: Type
newtype HtmlOverlayProps = HtmlOverlayProps Foreign
htmlOverlayProps :: Options HtmlOverlayOption -> HtmlOverlayProps
htmlOverlayProps = HtmlOverlayProps <<< options
htmlOverlay :: Options HtmlOverlayOption -> Array ReactElement -> ReactElement
htmlOverlay opts = createElement htmlOverlayClass (htmlOverlayProps opts)
captureScroll :: Option HtmlOverlayOption (UnknownType)
captureScroll = opt "captureScroll"
captureDrag :: Option HtmlOverlayOption (UnknownType)
captureDrag = opt "captureDrag"
captureClick :: Option HtmlOverlayOption (UnknownType)
captureClick = opt "captureClick"
captureDoubleClick :: Option HtmlOverlayOption (UnknownType)
captureDoubleClick = opt "captureDoubleClick"
