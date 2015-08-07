// 31 july 2015
import Cocoa

class tButton : tControl {
	private var b: NSButton
	private var parent: tControl?
	private var horzpri, vertpri: NSLayoutPriority

	init(_ text: String) {
		self.b = NSButton(frame: NSZeroRect)
		self.b.title = text
		self.b.setButtonType(NSButtonType.MomentaryPushInButton)
		self.b.bordered = true
		self.b.bezelStyle = NSBezelStyle.RoundedBezelStyle
		self.b.font = NSFont.systemFontOfSize(NSFont.systemFontSizeForControlSize(NSControlSize.RegularControlSize))
		self.b.translatesAutoresizingMaskIntoConstraints = false

		self.parent = nil

		self.horzpri = self.b.contentHuggingPriorityForOrientation(NSLayoutConstraintOrientation.Horizontal)
		self.vertpri = self.b.contentHuggingPriorityForOrientation(NSLayoutConstraintOrientation.Vertical)
	}

	func tSetParent(p: tControl, addToView v: NSView) {
		self.parent = p
		v.addSubview(self.b)
	}

	func tFillAutoLayout(inout p: tAutoLayoutParams) {
		// reset the hugging priority
		self.b.setContentHuggingPriority(self.horzpri, forOrientation:NSLayoutConstraintOrientation.Horizontal)
		self.b.setContentHuggingPriority(self.vertpri, forOrientation:NSLayoutConstraintOrientation.Vertical)

		p.view = self.b
		p.attachLeft = true
		p.attachTop = true
		p.attachRight = true
		p.attachBottom = true
	}

	func tRelayout() {
		if self.parent != nil {
			self.parent?.tRelayout()
		}
	}
}
