require ('minitest/autorun')
require ('minitest/rg')
require_relative ('sports.rb')

class TestTeam < Minitest::Test 

  def setup()
    @team_info = Team.new("CodeClanChicks", ["Graham", "Colin", "Michael", "Eddie", "Chris"], "John")
  end


  def test_get_team_name()
    assert_equal("CodeClanChicks", @team_info.get_team_name())
  end

  def test_get_players()
    assert_equal(["Graham", "Colin", "Michael", "Eddie", "Chris"], @team_info.get_players())
  end

  def test_get_coach_name()
    assert_equal("John", @team_info.get_coach_name())
  end

  # def test_set_team_name()
  #   @team_info.set_team_name("CodeClanCodesters")
  #   assert_equal("CodeClanCodesters", @team_info.get_team_name())
  # end

  def test_set_coach()
    @team_info.set_coach_name("Alan")
    assert_equal("Alan", @team_info.get_coach_name())
  end

  def test_add_new_player()
    @team_info.add_new_player("Jia")
    assert_equal(["Graham", "Colin", "Michael", "Eddie", "Chris", "Jia"], @team_info.get_players)
  end

  def test_check_player_is_in_array()
    assert_equal(true, @team_info.check_player_in_array("Chris"))
  end

  def test_points_win_or_lose()
    @team_info.points_win_or_lose("win")
    assert_equal(1, @team_info.get_points())
  end


end


