-- This file is for use with Corona(R) SDK
--
-- This file is automatically generated with PhysicsEdtior (http://physicseditor.de). Do not edit
--
-- Usage example:
--			local scaleFactor = 1.0
--			local physicsData = (require "shapedefs").physicsData(scaleFactor)
--			local shape = display.newImage("objectname.png")
--			physics.addBody( shape, physicsData:get("objectname") )
--

-- copy needed functions to local scope
local unpack = unpack
local pairs = pairs
local ipairs = ipairs

module(...)

function physicsData(scale)
	local physics = { data =
	{ 
		
		["bumperOne"] = {
			
				{
					density = 2, friction = 0, bounce = 2, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -33.2450981140137, 0.588233947753906  ,  -28.0980377197266, -0.392158508300781  ,  -36.1862754821777, 24.3627452850342  ,  -40.8431358337402, 17.9901962280273  ,  -41.8235282897949, 7.94117736816406  }
				}  ,
				{
					density = 2, friction = 0, bounce = 2, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   21.4117660522461, -8.23529434204102  ,  26.3137283325195, -5.04901885986328  ,  27.7843170166016, -1.86274719238281  ,  12.8333358764648, -9.46078491210938  ,  17.7352981567383, -10.1960830688477  }
				}  ,
				{
					density = 2, friction = 0, bounce = 2, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   26.3137283325195, -5.04901885986328  ,  21.4117660522461, -8.23529434204102  ,  24.8431396484375, -7.00980377197266  }
				}  ,
				{
					density = 2, friction = 0, bounce = 2, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -21.7254905700684, 37.5980396270752  ,  -26.6274490356445, 28.7745094299316  ,  -18.7843132019043, -2.35294342041016  ,  -12.4117622375488, -4.31372833251953  ,  13.0784301757812, 24.1176471710205  ,  -5.05882263183594, 46.9117641448975  ,  -9.96078491210938, 46.4215688705444  ,  -16.0882339477539, 44.2156858444214  }
				}  ,
				{
					density = 2, friction = 0, bounce = 2, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -18.7843132019043, -2.35294342041016  ,  -26.6274490356445, 28.7745094299316  ,  -31.529411315918, 27.3039207458496  ,  -36.1862754821777, 24.3627452850342  ,  -28.0980377197266, -0.392158508300781  }
				}  ,
				{
					density = 2, friction = 0, bounce = 2, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   4.5, 44.7058820724487  ,  -0.1568603515625, 46.4215688705444  ,  -5.05882263183594, 46.9117641448975  ,  13.0784301757812, 24.1176471710205  ,  12.8333358764648, 30.735294342041  ,  11.1176452636719, 36.6176471710205  ,  8.42156982421875, 41.5196075439453  }
				}  ,
				{
					density = 2, friction = 0, bounce = 2, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   27.7843170166016, -1.86274719238281  ,  28.2745132446289, 0.833332061767578  ,  3.02941131591797, -7.74509811401367  ,  6.21569061279297, -9.21569061279297  ,  12.8333358764648, -9.46078491210938  }
				}  ,
				{
					density = 2, friction = 0, bounce = 2, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   16.7549057006836, 20.6862754821777  ,  -0.647056579589844, -7.5  ,  3.02941131591797, -7.74509811401367  ,  28.2745132446289, 0.833332061767578  ,  26.5588226318359, 7.45098114013672  ,  23.6176452636719, 13.8235282897949  ,  20.4313735961914, 17.9901962280273  }
				}  ,
				{
					density = 2, friction = 0, bounce = 2, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -6.77450942993164, -6.32352828979492  ,  -0.647056579589844, -7.5  ,  16.7549057006836, 20.6862754821777  ,  13.0784301757812, 24.1176471710205  ,  -12.4117622375488, -4.31372833251953  }
				}  
		}
		
	} }

	-- apply scale factor
	local s = scale or 1.0
	for bi,body in pairs(physics.data) do
		for fi,fixture in ipairs(body) do
			for ci,coordinate in ipairs(fixture.shape) do
				fixture.shape[ci] = s * coordinate
			end
		end
	end
	
	function physics:get(name)
		return unpack(self.data[name])
	end
	
	return physics;
end


