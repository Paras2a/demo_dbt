with teams as (
    select * from {{ ref('example_teams')}}
),

team_locations as (
    select * from {{ ref('team_locations')}}
),

final as (
    select
        eams.team,
        team_locations.city,
        team_locations.state

    from teams

    left join team_locations
        on team_locations.name= teams.name
)

select * from final
