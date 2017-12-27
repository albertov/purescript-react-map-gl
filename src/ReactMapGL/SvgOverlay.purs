module ReactMapGL.SvgOverlay where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import ReactMapGL (EventHandlerOpt, UnknownType, Node)
foreign import svgOverlayClass :: ReactClass SvgOverlayProps
foreign import data SvgOverlayOption :: Type
newtype SvgOverlayProps = SvgOverlayProps Foreign
svgOverlayProps :: Options SvgOverlayOption -> SvgOverlayProps
svgOverlayProps = SvgOverlayProps <<< options
svgOverlay :: Options SvgOverlayOption -> Array ReactElement -> ReactElement
svgOverlay opts = createElement svgOverlayClass (svgOverlayProps opts)
captureScroll :: Option SvgOverlayOption (UnknownType)
captureScroll = opt "captureScroll"
captureDrag :: Option SvgOverlayOption (UnknownType)
captureDrag = opt "captureDrag"
captureClick :: Option SvgOverlayOption (UnknownType)
captureClick = opt "captureClick"
captureDoubleClick :: Option SvgOverlayOption (UnknownType)
captureDoubleClick = opt "captureDoubleClick"
