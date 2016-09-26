class VideoObserver < ActiveRecord::Observer
	def before_save(resource)
		video = Yt::Video.new url: resource.link
		resource.uid = video.id
		resource.title = video.title
		resource.likes = video.like_count
		resource.dislikes = video.dislike_count
		resource.published_at = video.published_at
		resource.comment_count = video.comment_count
	rescue Yt::Errors::NoItems
		resource.title = ''
	end
end
