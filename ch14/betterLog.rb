$nestingDepth = 0
def log block_description, &block
	indent "Beginning \"#{block_description}\"..."
	$nestingDepth = $nestingDepth+1
	result = block.call
	$nestingDepth = $nestingDepth-1
	indent "...\"#{block_description}\" finished, returning: #{result}"
end
def indent string
	$nestingDepth.times do
		print "    "
	end
	puts string
end
log "outer block" do
	log "some little block" do
		log "teeny-tiny block" do
			"lots of love"
		end
		42
	end
	log "yet another block" do
		"I love Indian food!"
	end
	true
end