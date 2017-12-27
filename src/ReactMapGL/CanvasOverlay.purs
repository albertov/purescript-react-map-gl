module ReactMapGL.CanvasOverlay where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import ReactMapGL (EventHandlerOpt, UnknownType, Node)
foreign import canvasOverlayClass :: ReactClass CanvasOverlayProps
foreign import data CanvasOverlayOption :: Type
newtype CanvasOverlayProps = CanvasOverlayProps Foreign
canvasOverlayProps :: Options CanvasOverlayOption -> CanvasOverlayProps
canvasOverlayProps = CanvasOverlayProps <<< options
canvasOverlay :: Options CanvasOverlayOption -> Array ReactElement -> ReactElement
canvasOverlay opts = createElement canvasOverlayClass (canvasOverlayProps opts)
captureScroll :: Option CanvasOverlayOption (UnknownType)
captureScroll = opt "captureScroll"
captureDrag :: Option CanvasOverlayOption (UnknownType)
captureDrag = opt "captureDrag"
captureClick :: Option CanvasOverlayOption (UnknownType)
captureClick = opt "captureClick"
captureDoubleClick :: Option CanvasOverlayOption (UnknownType)
captureDoubleClick = opt "captureDoubleClick"
