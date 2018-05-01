adding
addLast: aLinkOrObject
	"Add aLink to the end of the receiver's list. Answer aLink."
	|aLink|
	aLink := aLinkOrObject asCtLink.
	self isEmpty
		ifTrue: [firstLink := aLink]
		ifFalse: [lastLink nextLink: aLink].
	lastLink := aLink.
	^aLink