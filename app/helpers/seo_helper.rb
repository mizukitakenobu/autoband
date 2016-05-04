module SeoHelper
  # canonical url
  def canonical_url
     @canonical_url if @canonical_url
  end

  # 各ページ毎のデスクリプション
  def page_description
    @description = !@description.nil? ? @description : Settings.site.meta.description
  end

  # 各ページ毎のOGP
  def page_og_image
    @og_image = Settings.site.meta.og.image
  end

  # 各ページ毎のタイトル
  def page_title
    @title if @title
  end

  def author
    @author if @author
  end

  def robots
    return nil if @robots == ""
    @robots = !@robots.nil? ? @robots : Settings.site.meta.robots
  end

end