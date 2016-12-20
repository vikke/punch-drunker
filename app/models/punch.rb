class Punch < ApplicationRecord
  def self.punch_list(user_id)
    find_by_sql(["select to_char(punch_at + cast('9 hours' as interval), 'YYYYMMDD') as d, min(punch_at) as start, max(punch_at) as end from punches where user_id = ? group by d order by start;", user_id])
  end
end
