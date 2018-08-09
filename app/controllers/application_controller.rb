class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  before_action :require_login, only: [:story, :bolide_rodeo, :leviathan_bread, :daniel_cries,
  :bolide_rodeo, :saltlick_jukebox, :boardroom, :sailing_to_mount_oligarch, :merlot_bot_hatches_a_plan,
:wild_white_automoton, :grim_persistence, :ingot_exchange, :salt_peter_online, :the_ascent,
:an_exquisite_vintage, :tad_excessive, :tiger_farm, :taste_of_betrayal, :world_map]
end
