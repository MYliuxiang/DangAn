(function (lib, img, cjs, ss) {

var p; // shortcut to reference prototypes

// library properties:
lib.properties = {
	width: 480,
	height: 720,
	fps: 24,
	color: "#FFFFFF",
	manifest: []
};



// symbols:



(lib.FlashAICB = function() {
	this.spriteSheet = ss["1_atlas_"];
	this.gotoAndStop(0);
}).prototype = p = new cjs.Sprite();



(lib.FlashAICB_1 = function() {
	this.spriteSheet = ss["1_atlas_"];
	this.gotoAndStop(1);
}).prototype = p = new cjs.Sprite();



(lib.Symbol8 = function() {
	this.initialize();

	// Layer 2
	this.shape = new cjs.Shape();
	this.shape.graphics.f().s("#333333").ss(1,1,1).p("Ah5CrQgIAqAHAJQAJAHAJACQATAFAGgaQAThOAQgXQAHgMAcgmQAZgmgOAlQgNAlgKAbQgKAagGAkQgFAgAKAFQALAGANgUQAJgSAJghQAGgaAUghQAQgdAHgGQAcgUAZgVQAxgoANgZQAVgqAEgdQAFgtgdgfQgjgkgpgEQgwgEg3AoQhQA5gZAOQgMAHgkATQgfAQgDAHQgCAKAFANQAHAQAPgDQAPgDApgVQAigRAJgHQABgBABgBAgcAAQgJAIgUAWQghAlgFANQgKAVgMA0QgCAKgCAIAg7giIgiAfQgjAfgGAKQgHAOgRA1QgIAagEAQQgFAUAGALIAFAJQAOAOAKgIQAMgIAHgOAhDhXQheBSgFAJIgXBAQgSA/ARAKQAHADAMADQAAAAABAA");
	this.shape.setTransform(-3,3.3);

	this.shape_1 = new cjs.Shape();
	this.shape_1.graphics.f("#F2D2B6").s().p("AhoDnQgJgCgJgHQgHgJAIgqIAEgSQAMg0AKgVQAFgNAhglIAdgeIgdAeQghAlgFANQgKAVgMA0IgEASQgHAOgMAIQgKAIgOgOIgFgJQgGgLAFgUIgBAAQgMgDgHgDQgRgKASg/IAXhAQAFgJBehSIACgCIgCACQgJAHgiARQgpAVgPADQgPADgHgQQgFgNACgKQADgHAfgQIAwgaQAZgOBQg5QA3goAwAEQApAEAjAkQAdAfgFAtQgEAdgVAqQgNAZgxAoQgZAVgcAUQgHAGgQAdQgUAhgGAaQgJAhgJASQgNAUgLgGQgKgFAFggQAGgkAKgaIAXhAQAOglgZAmIgjAyQgQAXgTBOQgFAWgPAAIgFgBgAhdgDQgjAfgGAKQgHAOgRA1QgIAagEAQQAEgQAIgaQARg1AHgOQAGgKAjgfIAigfg");
	this.shape_1.setTransform(-3,3.3);

	this.addChild(this.shape_1,this.shape);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-24,-21,42,48.5);


(lib.Symbol7 = function() {
	this.initialize();

	// Layer 1
	this.shape = new cjs.Shape();
	this.shape.graphics.f("#F2D2B6").s().p("AiHDWQgtgHAOhjQARh5B1hvQAigjAqgdIAjgWQAhgMAYAlQAVAgAJA6QAIA2gHApQgHAtgVABQgtADhAA3QgYAUgLAEQgTAEgRgVQgLgMAagkQAVgdAZgYIgtAlQg7A5gDA5QgBAYgQAQQgMANgOAAIgFAAg");

	this.addChild(this.shape);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-17,-21.4,34.2,43);


(lib.Symbol6 = function() {
	this.initialize();

	// Layer 1
	this.shape = new cjs.Shape();
	this.shape.graphics.f("#333333").s().p("AAIAYQgNgMgDgGQgFgHgMgIIgTgOIAAgFIACgBIAEgBQAGAAAGAEIAMAJQAHgPAPgFQARgFAAATQAAAHgCAEQgGAHgRACQAAAHAQAKQAYAPAFAEIgDAFQAAAAgBAAQAAABgBAAQAAAAgBAAQgBAAgBAAQgLAAgSgPgAAAgSIgBACIAAABQAPABAAgIIgBgEQgIAAgFAIg");
	this.shape.setTransform(46.7,7.2,1.663,1.663,20);

	this.shape_1 = new cjs.Shape();
	this.shape_1.graphics.f("#333333").s().p("AANAaQgVgKgRgPQgTgNABgLQgBgHAbAYQAgAeAYgJIAGAFQgBABgFAFg");
	this.shape_1.setTransform(27.8,44,1.663,1.663,-10);

	this.shape_2 = new cjs.Shape();
	this.shape_2.graphics.f("#333333").s().p("Ag/AbIACgJIACgDIADgBIAHAGQAkgCAIgCIAOgIQgOgHgDgDQgBgBAAgKQAAgSAUAAQAUAAAAAaIABABIALgFQAIgEAHgCIAGAFQAAAFgqARQgpAUgPAAQgZAAgEgFgAAAgRQAAANAOADQAHgFAAgDQAAgFgBAAQgEgDgMAAIgEAAg");
	this.shape_2.setTransform(129.1,19.9,1.663,1.663,-10);

	this.shape_3 = new cjs.Shape();
	this.shape_3.graphics.f("#333333").s().p("AgnAIQAAgIAcgHQAUgFAZgCIAEABQAAABABAAQAAAAAAABQABAAAAABQAAAAAAABQAAACgGAEQgjADgJABQgJACgOAMQgGgGAAgBg");
	this.shape_3.setTransform(115.8,9.9,1.663,1.663,-10);

	this.shape_4 = new cjs.Shape();
	this.shape_4.graphics.f("#333333").s().p("AgYghIABgEQANAGAOAYQAQAVAFATIgBADIAAACIgFAAIgrhHg");
	this.shape_4.setTransform(39.7,17.8,1.663,1.663,-10);

	this.shape_5 = new cjs.Shape();
	this.shape_5.graphics.f("#ABEFEA").s().p("AgpBeQgRgRgCgQQgCgQAHgnQAIgmAhhQQAnBCAfBCQAGAMAAAUQAAAZgSARQgSATgZgBQgYABgSgTg");
	this.shape_5.setTransform(10.7,71.6,1.122,1.122,0,41.2,-138.8,0.4,-0.4);

	this.shape_6 = new cjs.Shape();
	this.shape_6.graphics.f("#ABEFEA").s().p("AgpBeQgRgRgCgQQgCgQAHgnQAIgmAhhQQAnBCAfBCQAGAMAAAUQAAAZgSARQgSATgZgBQgYABgSgTg");
	this.shape_6.setTransform(150.7,32.4,1.122,1.122,-78.8,0,0,0.2,0);

	this.shape_7 = new cjs.Shape();
	this.shape_7.graphics.f("#ABEFEA").s().p("AgpBeQgRgRgCgQQgCgQAHgnQAIgmAhhQQAnBCAfBCQAGAMAAAUQAAAZgSARQgSATgZgBQgYABgSgTg");
	this.shape_7.setTransform(159.3,62.1,1.122,1.122,-48.8,0,0,0.2,-0.4);

	this.shape_8 = new cjs.Shape();
	this.shape_8.graphics.f("#2A2A2A").s().p("AgeARQAAAAAAAAQABgBAAAAQAAAAAAAAQgBgBAAAAIApgIIgkgXIAAgCQACgHAFgEIAxAgIAAAPIg6AMQgDgGAAgHg");
	this.shape_8.setTransform(102.3,83.5,1.663,1.663,0,-3.8,176.2);

	this.shape_9 = new cjs.Shape();
	this.shape_9.graphics.f("#2A2A2A").s().p("Ag6AOQgPgHAFgJQAGgLAKgCQAJgDAfAAQAdAAAdAEQAdAFgGAJQgGAJgSAEQgSADgiACIgPABQgXAAgNgFg");
	this.shape_9.setTransform(101.5,73,1.663,1.663,-0.3);

	this.shape_10 = new cjs.Shape();
	this.shape_10.graphics.f("#2A2A2A").s().p("AgeARQAAAAAAAAQABgBAAAAQAAAAAAAAQgBgBAAAAIApgIIgkgXIAAgCQACgHAFgEIAxAgIAAAPIg6AMQgDgGAAgHg");
	this.shape_10.setTransform(62.5,86.5,1.663,1.663,-3.8);

	this.shape_11 = new cjs.Shape();
	this.shape_11.graphics.f("#2A2A2A").s().p("Ag6AOQgPgHAFgJQAGgLAKgCQAJgDAfAAQAdAAAdAEQAdAFgGAJQgGAJgSAEQgSADgiACIgPABQgXAAgNgFg");
	this.shape_11.setTransform(62.3,75.2,1.663,1.663,0,-7.4,172.6);

	this.shape_12 = new cjs.Shape();
	this.shape_12.graphics.f("#DDA77B").s().p("AgZBGIAPiLIAVAAIAPCLg");
	this.shape_12.setTransform(83.3,95.8,1.663,1.663,-3.8);

	this.shape_13 = new cjs.Shape();
	this.shape_13.graphics.f("#DDA77B").s().p("ABAAUQgFgGgOgHQgOgHgeAAQgbgCgQAIQgQAIgFAGIgHAAQAFgMAMgIQAXgTAeAAQAgAAAWATQAMAIAFAMg");
	this.shape_13.setTransform(84.2,115.5,1.663,1.663,-3.8,0,0,0,-0.5);

	this.shape_14 = new cjs.Shape();
	this.shape_14.graphics.f("#333333").s().p("ADAD8IALhkQAHhuhQhCIgEgDIgOgKQgsAnhUAcQhWAbh1gLIgRCfIgZgDIgHgtQgEgcgKgQQgLgQABgWQgHgPAFhFQAHhaBghWQBfhWB9AWQCAAVBNBpQBNBogRBRQgOBCgLAWQgGAMgMAPQgNAPgKAaQgKAagBAKg");
	this.shape_14.setTransform(79.4,51.3,1.663,1.663,-10);

	this.shape_15 = new cjs.Shape();
	this.shape_15.graphics.f("#F2D2B6").s().p("AD7BSQgmgNgYgfQgXgeAFgTQAEgVAfgbQAegbAmAAQAlAAAYAbQAXAbgFAkQgEAmgeAaQgVATgXAAQgMAAgMgFgAk+BEQgegagFgmQgEgkAXgbQAYgbAlAAQAmAAAeAbQAfAbAEAVQAFATgXAeQgYAfgmANQgMAFgLAAQgYAAgVgTg");
	this.shape_15.setTransform(82.3,89,1.663,1.663,-3.8);

	this.shape_16 = new cjs.Shape();
	this.shape_16.graphics.f("#F2D2B6").s().p("AglFcQhigahEhFQhEhOANlcQB2izA7ABQBAACARACQAOgCBBgCQA7gBB6DJQAKFGhFBOQhEBFhiAaQgTAEgQAAQgSAAgTgEg");
	this.shape_16.setTransform(81.8,74.8,1.663,1.663,-3.8);

	this.shape_17 = new cjs.Shape();
	this.shape_17.graphics.f("#333333").s().p("AkPEGIgCgNQg5jcA5iQQARgfAZgaQBVhZB4AAQAOAAAMACQANgCANAAQB4AABWBZQAZAaARAfQA5CQg5DcIgCANg");
	this.shape_17.setTransform(79.3,47.8,1.663,1.663,-3.8);

	this.addChild(this.shape_17,this.shape_16,this.shape_15,this.shape_14,this.shape_13,this.shape_12,this.shape_11,this.shape_10,this.shape_9,this.shape_8,this.shape_7,this.shape_6,this.shape_5,this.shape_4,this.shape_3,this.shape_2,this.shape_1,this.shape);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(0,0,170.9,133.4);


(lib.Symbol5 = function() {
	this.initialize();

	// Layer 1
	this.shape = new cjs.Shape();
	this.shape.graphics.f().s("#FFFFFF").ss(2,1,1).p("AhwikIAyA/QAeiFAeCFIgcEZQAnkeAhD5IgdkBAAqCPQACARACAUAgChlIArhOIAlBGIAjg5");
	this.shape.setTransform(46.1,66);

	this.shape_1 = new cjs.Shape();
	this.shape_1.graphics.f().s("#333333").ss(2,1,1).p("AhbDkQgIgrgVgwQgbg+gbgbQhIhGAAhnQAAhmBIhJQBJhIBlAAQBmAABJBIQBIBJAABmQAABnhIBGQgYAXgaBHQgRAtgIApIACAAIAABYQhmBzhbhzIAAgNIAAggIC/AAAhbEPIAAgrIC/AAAhbEvIC/AA");
	this.shape_1.setTransform(46.2,63.9);

	this.shape_2 = new cjs.Shape();
	this.shape_2.graphics.f().s("#000000").ss(2,1,1).p("AFtDhIBfAAAD6gdIBahBAAKhZIAAiHADDjCIhBBzAi4jCIAyBzAnLDhIB4AAAj0gOIhfhLAmeA3IBoBBAGVAoIhVAy");
	this.shape_2.setTransform(46,22.5);

	this.shape_3 = new cjs.Shape();
	this.shape_3.graphics.f("#00C7AE").s().p("AhgAOIAAgMIAAgfIC/AAIi/AAIAAgqIC/AAIACAAIAABVQgzA6gvAAQgxAAgug6gABfACIi/AAg");
	this.shape_3.setTransform(46.8,94);

	this.shape_4 = new cjs.Shape();
	this.shape_4.graphics.f("#FFFFCC").s().p("AAXBqQALgegCgnQgCglgNgeQgMgeATAMQATANAOAeQANAdAAAhQAAAhgMAWQgMAYgRAAQgRAAALgegAgjhSQgLgUgOgMQgOgNAHgEQAGgEATAAQAUAAAQALQAOALAKAJQAKAKgLAGQgKAEgOALQgGADgFAAQgKAAgHgMg");
	this.shape_4.setTransform(59,47.9);

	this.shape_5 = new cjs.Shape();
	this.shape_5.graphics.f("#FFCC00").s().p("AhbEtQgIgsgUgvQgbg+gbgbQhJhJAAhkQAAhnBJhIQBIhJBlAAQBmAABJBJQBIBIAABnQAABkhIBJQgYAXgaBGQgQAugJApgAAtERIgEgkIAEAkgAgeERIAAgCIAAgBIAAgBQAViUARgBIABAAIAAAAQAQABAPBsIAAAAIAAACIAAABIAAABIABABIAAADIgckBIAcEBIAAgDIgBgBIAAgBIAAgBIAAgCIAAAAQgPhsgQgBIAAAAIgBAAQgRABgVCUIAAABIAAABIAAACIAbkYIArhOIAlBGIAkg5IgkA5IglhGIgrBOIgbEYIAAAAgACRh1QANAeACAmQACAngLAcQgLAeARAAQAQAAAMgXQANgXAAgfQAAgggNgfQgOgfgUgMQgFgEgDAAQgHAAAJAWgAgDgHQgeiFgeCFIgyg/IAyA/QAPhDAPAAQAPAAAPBDgAA7jbQgHAEAOANQAOAMAKAUQALATASgKQAPgKALgFQAKgGgJgJQgKgKgQgLQgRgLgTAAQgUAAgFAEgAgeERg");
	this.shape_5.setTransform(46.2,56.6);

	this.addChild(this.shape_5,this.shape_4,this.shape_3,this.shape_2,this.shape_1,this.shape);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-1,-1,94,103.3);


(lib.Symbol1 = function() {
	this.initialize();

	// Layer 1
	this.shape = new cjs.Shape();
	this.shape.graphics.f("#CCCCCC").s().p("AhqB9IgGgJIgPABQguAAgZgyQgSgiAAgbIABgFQgVgIgMgYIgLgoQAAg0AkgcQAggZAtADQAuADAfAfIACABIAuAAQAsAGAHA/IAEAAQArAHARAiQAPABAaAJQA7ANAvAFQATACAAAUQgBAbg8AVQgxARg5ACQgFATgNASQghAwg+AAQg4AAgegxg");
	this.shape.setTransform(26,17.5);

	this.addChild(this.shape);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(0,0,52,35);


// stage content:
(lib._1 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// 纸
	this.shape = new cjs.Shape();
	this.shape.graphics.f().s("#333333").ss(1,1,1).p("Am3h6IK2AAIFjDDIzDAyg");
	this.shape.setTransform(78,469.5);

	this.shape_1 = new cjs.Shape();
	this.shape_1.graphics.f("#FFFFFF").s().p("Am3h6IK2AAIFjDDIzDAyg");
	this.shape_1.setTransform(78,469.5);

	this.shape_2 = new cjs.Shape();
	this.shape_2.graphics.f().s("#333333").ss(1,1,1).p("ApYBxIAggoQAmguAlgtQAmgwAmgyQBqgDBngIQDcAEDdATQAUACAUABQBhA7BeA4QBFArBEAqQhjAEhjAEQkUAMj8AJQidgGisgFQgygCgzgBg");
	this.shape_2.setTransform(80.5,458.1);

	this.shape_3 = new cjs.Shape();
	this.shape_3.graphics.f("#FFFFFF").s().p("AnGB1IhlgDIgtgBIAggoIBLhbQAmgwAmgyQBqgDBngIQDcAEDdATIAoADIC/BzICJBVIjGAIIoQAVQidgGisgFg");
	this.shape_3.setTransform(80.5,458.1);

	this.shape_4 = new cjs.Shape();
	this.shape_4.graphics.f().s("#333333").ss(1,1,1).p("ApPBdIAjgkQAogqAngqQAqgtAngwQBrgGBlgQQDcAJDcAlQATADAUADQBgBABcA8QA5AoA4AoQhkAEhlAFQkkAMj0AIQiIgTimgSQgwgFgzgFg");
	this.shape_4.setTransform(83,447.8);

	this.shape_5 = new cjs.Shape();
	this.shape_5.graphics.f("#FFFFFF").s().p("Am/BqIhjgKIgtgDIAjgkQAogqAngqQAqgtAngwQBrgGBlgQQDcAJDcAlIAnAGIC8B8IBxBQIjJAJQkkAMj0AIQiIgTimgSg");
	this.shape_5.setTransform(83,447.8);

	this.shape_6 = new cjs.Shape();
	this.shape_6.graphics.f().s("#333333").ss(1,1,1).p("ApGBJIAkggQArgmAqgnQAsgpAqgwQBsgIBjgZQDcAODbA4QATAEATAEQBfBFBZBAQAtAmAtAmQhmAFhnAEQkzANjtAIQhyghiggeQgvgKgzgIg");
	this.shape_6.setTransform(85.6,437.5);

	this.shape_7 = new cjs.Shape();
	this.shape_7.graphics.f("#FFFFFF").s().p("Am5BgQgugKgygIIgsgFIAkggQAqgmAqgnQAsgpAqgwQBsgIBjgZQDcAODbA4IAmAIQBfBFBYBAIBaBMIjMAJQkzANjtAIQhyghihgeg");
	this.shape_7.setTransform(85.6,437.5);

	this.shape_8 = new cjs.Shape();
	this.shape_8.graphics.f().s("#333333").ss(1,1,1).p("Ao9A0IAmgcQAugfAtgmQAvgmArguQBugLBgghQDcASDaBLQATAGASAFQBeBHBWBHQAiAkAgAjQhnAFhoAFQlDAOjlAGQhegviagqQgtgNgygMg");
	this.shape_8.setTransform(88.1,427.2);

	this.shape_9 = new cjs.Shape();
	this.shape_9.graphics.f("#FFFFFF").s().p("AmyBVQgsgNgzgMIgrgIIAmgcQAtgfAtgmQAvgmAsguQBtgLBgghQDcASDaBLIAlALQBeBHBWBHIBCBHIjPAKQlDAOjmAGQhdgviagqg");
	this.shape_9.setTransform(88.1,427.2);

	this.shape_10 = new cjs.Shape();
	this.shape_10.graphics.f().s("#333333").ss(1,1,1).p("Ao0AgIApgYQAwgbAugjQAzgjAugsQBugOBegpQDcAWDYBeQATAHASAGQBdBNBTBKQAXAiAVAhQhpAFhsAFQlRAPjfAFQhIg8iTg3QgrgRgygPg");
	this.shape_10.setTransform(90.6,416.9);

	this.shape_11 = new cjs.Shape();
	this.shape_11.graphics.f("#FFFFFF").s().p("AmrBKQgrgRgygPIgsgKIApgYQAwgbAugjQAzgjAugsQBvgOBegpQDbAWDYBeIAmANQBcBNBTBKIAsBDIjVAKQlQAPjfAFQhIg8iUg3g");
	this.shape_11.setTransform(90.6,416.9);

	this.shape_12 = new cjs.Shape();
	this.shape_12.graphics.f().s("#333333").ss(1,1,1).p("AorALIArgSQAzgYAxgfQA2ggAvgrQBwgRBcgxQDbAaDXBxQASAIASAIQBcBRBRBPQALAfAJAgQhrAFhtAFQlfAQjZADQgzhJiNhDQgqgWgxgRg");
	this.shape_12.setTransform(93.1,406.6);

	this.shape_13 = new cjs.Shape();
	this.shape_13.graphics.f("#FFFFFF").s().p("AmkBAQgqgWgxgRIgsgOIArgSQAzgYAxgfQA2ggAvgrQBwgRBcgxQDbAaDXBxIAkAQQBcBRBRBPQALAfAJAgIjYAKQlfAQjZADQgzhJiNhDg");
	this.shape_13.setTransform(93.1,406.6);

	this.shape_14 = new cjs.Shape();
	this.shape_14.graphics.f().s("#333333").ss(1,1,1).p("AojgHIAsgQQA1gUA0gcQA5gdAygqQBwgTBag6QDbAfDWCEQASAKARAJQBcBWBNBSQgBAegDAdQhsAFhvAFQluARjSADQgehXiGhQQgogZgxgVg");
	this.shape_14.setTransform(95.8,396.3);

	this.shape_15 = new cjs.Shape();
	this.shape_15.graphics.f("#FFFFFF").s().p("AmfA1QgogZgxgVIgrgOIAsgQQA1gUA0gcQA5gdAygqQBwgTBag6QDbAfDWCEIAjATQBcBWBNBSQgBAegDAdIjbAKQluARjSADQgehXiGhQg");
	this.shape_15.setTransform(95.8,396.3);

	this.shape_16 = new cjs.Shape();
	this.shape_16.graphics.f().s("#333333").ss(1,1,1).p("AomgcIAvgMQA4gPA2gZQA8gaA0goQBxgWBYhCQDaAjDVCXQASALARAKQBaBbBLBXQgMAbgPAbQhuAFhxAGQl9ASjLABQgJhliAhcQgmgdgxgWg");
	this.shape_16.setTransform(99.5,386);

	this.shape_17 = new cjs.Shape();
	this.shape_17.graphics.f("#FFFFFF").s().p("AmlAqQglgdgxgWIgrgTIAvgMQA3gPA2gZQA9gaA0goQBxgWBYhCQDaAjDVCXIAjAVQBaBbBLBXQgNAbgPAbIjeALQl9ASjLABQgJhliBhcg");
	this.shape_17.setTransform(99.5,386);

	this.shape_18 = new cjs.Shape();
	this.shape_18.graphics.f().s("#333333").ss(1,1,1).p("AoogwIAwgIQA7gKA4gXQBAgXA1gmQBzgZBVhKQDbAoDUCpQARAMARAMQBZBfBIBcQgYAYgbAZQhvAGhzAFQmMATjEAAQANhyh7hoQglgggvgbg");
	this.shape_18.setTransform(103.1,375.7);

	this.shape_19 = new cjs.Shape();
	this.shape_19.graphics.f("#FFFFFF").s().p("AmpAgQglgggvgbIgrgVIAwgIQA7gKA4gXQBAgXA1gmQBzgZBVhKQDbAoDTCpIAiAYQBaBfBHBcQgXAYgcAZIjhALQmNATjDAAQANhyh7hog");
	this.shape_19.setTransform(103.1,375.7);

	this.shape_20 = new cjs.Shape();
	this.shape_20.graphics.f().s("#333333").ss(1,1,1).p("AorhEIAzgEQA9gGA7gUQBCgTA4glQB0gcBThSQDaAsDTC8QARANAQAOQBYBkBFBfQgjAXgnAWQhxAGh0AFQmcAUi8gBQAhh/h0h1Qgjgjgvgfg");
	this.shape_20.setTransform(106.8,365.4);

	this.shape_21 = new cjs.Shape();
	this.shape_21.graphics.f("#FFFFFF").s().p("AlbEJQAhh/h0h1QgjgjgvgfIgrgXIAzgEQA9gGA7gUQBCgTA4glQB0gcBThSQDaAsDTC8IAhAbQBYBkBFBfQgjAXgnAWIjlALQmIATi+AAIgSAAg");
	this.shape_21.setTransform(106.8,365.4);

	this.shape_22 = new cjs.Shape();
	this.shape_22.graphics.f().s("#333333").ss(1,1,1).p("AouhZIA1AAQBAgBA9gRQBFgQA6gkQB1geBRhbQDaAxDSDPQAQAPAQAMQBYBrBCBkQgvAUgzAUQhyAGh3AGQmrAVi1gCQA3iNhuiCQghgmgwgjg");
	this.shape_22.setTransform(110.5,355.1);

	this.shape_23 = new cjs.Shape();
	this.shape_23.graphics.f("#FFFFFF").s().p("Al8EZQA3iNhuiCQghgmgwgjIgqgaIA1AAQBAgBA9gRQBFgQA6gkQB1geBRhbQDaAxDSDPIAgAbQBYBrBCBkQgvAUgzAUIjpAMQmFATi5AAIgiAAg");
	this.shape_23.setTransform(110.5,355.1);

	this.shape_24 = new cjs.Shape();
	this.shape_24.graphics.f().s("#333333").ss(1,1,1).p("AoxhtIA3AEQBDADBAgNQBIgOA8giQB2ghBOhjQDaA1DRDiQAQAQAPAOQBXBwA/BnQg6ASg/ATQhzAGh5AFQm7AWitgDQBLibhniNQgggrgvglg");
	this.shape_24.setTransform(114.2,344.8);

	this.shape_25 = new cjs.Shape();
	this.shape_25.graphics.f("#FFFFFF").s().p("AmcEoQBLibhniNQgggrguglIgqgdIA2AEQBDADBAgNQBIgOA8giQB2ghBOhjQDbA1DQDiIAfAeQBXBwBABnIh6AlIjsALQl+ATi1AAIg1AAg");
	this.shape_25.setTransform(114.2,344.8);

	this.shape_26 = new cjs.Shape();
	this.shape_26.graphics.f().s("#333333").ss(1,1,1).p("AoziCIA5AIQBFAHBCgKQBMgKA+ghQB3gkBMhrQDaA6DPD0QAQAQAPARQBWB1A8BrQhGAQhLAQQh1AGh7AGQnJAXingEQBhiohhiZQgegwgugpg");
	this.shape_26.setTransform(117.8,334.6);

	this.shape_27 = new cjs.Shape();
	this.shape_27.graphics.f("#FFFFFF").s().p("Am9E3QBhiohhiZQgegwgugpIgqgfIA5AIQBFAHBCgKQBMgKA+ghQB3gkBMhrQDaA6DPD0IAfAhQBWB1A8BrIiRAgIjwAMQl+AUizAAIg/gBg");
	this.shape_27.setTransform(117.8,334.6);

	this.shape_28 = new cjs.Shape();
	this.shape_28.graphics.f().s("#333333").ss(1,1,1).p("Ao2iXIA7AMQBJAMBEgHQBOgHBAgfQB4gnBLhzQDZA+DOEHQAQARAPATQBUB5A6BwQhSAOhWANQh3AHh9AGQnZAYifgGQB2i2hbikQgcg1gugsg");
	this.shape_28.setTransform(121.5,324.3);

	this.shape_29 = new cjs.Shape();
	this.shape_29.graphics.f("#FFFFFF").s().p("AndFGQB2i2hbikQgcg1gugsIgqgiIA7AMQBIAMBFgHQBOgHBAgfQB4gnBLhzQDZA+DOEHIAeAkQBVB5A6BwIipAbIjzANQl6ATiyAAIhMgBg");
	this.shape_29.setTransform(121.5,324.3);

	this.shape_30 = new cjs.Shape();
	this.shape_30.graphics.f().s("#333333").ss(1,1,1).p("Ao4irIA8AQQBLAQBIgEQBRgDBCgeQB5gqBIh7QDaBCDMEYQAQAVAOATQBUB+A2B0QhdAMhiALQh5AHh+AGQnoAZiYgHQCLjDhVixQgag4gugwg");
	this.shape_30.setTransform(125.2,314);

	this.shape_31 = new cjs.Shape();
	this.shape_31.graphics.f("#FFFFFF").s().p("An9FVQCLjDhVixQgag4gugwIgpgkIA8AQQBLAQBIgEQBRgDBCgeQB5gqBIh7QDaBCDMEYIAeAoQBUB+A2B0QhdAMhiALIj3ANQmBATixAAQguAAgggBg");
	this.shape_31.setTransform(125.2,314);

	this.shape_32 = new cjs.Shape();
	this.shape_32.graphics.f().s("#333333").ss(1,1,1).p("Ao7jAIA/AUQBOAVBJgBQBVgBBEgcQB6gsBGiEQDZBHDMErQAPAVAOAWQBSCCA0B4QhoAKhvAJQh6AHiAAGQn4AaiRgIQChjRhPi9QgYg8gugzg");
	this.shape_32.setTransform(128.9,303.7);

	this.shape_33 = new cjs.Shape();
	this.shape_33.graphics.f("#FFFFFF").s().p("AoeFkQChjRhPi9QgZg8gtgzIgpgnIA/AUQBNAVBKgBQBVgBBEgcQB6gsBFiEQDaBHDLErIAdArQBTCCA0B4IjXATIj6ANQl/AUiwAAQg3AAgjgCg");
	this.shape_33.setTransform(128.9,303.7);

	this.shape_34 = new cjs.Shape();
	this.shape_34.graphics.f().s("#333333").ss(1,1,1).p("Ao+jUIBBAYQBRAZBMACQDyAIBqjbQDZBLDLE+QBlCgA6CRQjpAPkEANQoGAaiKgJQC2jehJjKQgXhAgtg2g");
	this.shape_34.setTransform(132.5,293.4);

	this.shape_35 = new cjs.Shape();
	this.shape_35.graphics.f("#FFFFFF").s().p("Ao+FzQC2jehJjKQgXhAgtg2IgpgpIBBAYQBRAZBMACQDyAIBqjbQDZBLDLE+QBlCgA6CRQjpAPkEANQmCATivAAQg8AAgjgCg");
	this.shape_35.setTransform(132.5,293.4);

	this.shape_36 = new cjs.Shape();
	this.shape_36.graphics.f().s("#333333").ss(1,1,1).p("Ao3i1QAfAKAgAJQBOAVBLgCQCHgBBdhKQBEg2AshbQAoAMAqAVQBeAvBeBdQBMBLBLBrQA7BTAuBTQAeBDAXA/QifATinATQhBAIhCAGQg6AHg1AFQk6AMiXgBQgpAAgbgCQCbjRhOi7QgZg7gtgyQgVgSgUgTg");
	this.shape_36.setTransform(135.5,289.4);

	this.shape_37 = new cjs.Shape();
	this.shape_37.graphics.f("#FFFFFF").s().p("AnRFrQgpAAgbgCQCbjRhOi7QgZg7gtgyIgpglIA/ATQBOAVBLgCQCHgBBdhKQBEg2AshbQAoAMAqAVQBeAvBeBdQBMBLBLBrQA7BTAuBTQAeBDAXA/IlGAmIiDAOIhvAMQkjAMiWAAIgYgBg");
	this.shape_37.setTransform(135.5,289.4);

	this.shape_38 = new cjs.Shape();
	this.shape_38.graphics.f().s("#333333").ss(1,1,1).p("AoxiWQAfAIAfAHQBMAQBIgGQCDgGBbhNQBDg3AthaQAmAJAoARQBeAnBeBUQBPBCBMBlQA9BNAxBRQAbBCAUBAQiVAbiYAdQg8ALg8AJQg1AKgvAHQk0AKicgBQgpAAgcgCQCBjEhSisQgcg3gugsQgVgRgUgRg");
	this.shape_38.setTransform(138.4,285.3);

	this.shape_39 = new cjs.Shape();
	this.shape_39.graphics.f("#FFFFFF").s().p("AmoFhQgoAAgcgCQCAjEhSisQgcg3gtgsIgqgiIA+APQBMAQBJgGQCCgGBbhNQBDg3AthaQAnAJAoARQBdAnBeBUQBPBCBMBlQA9BNAxBRQAbBCAUBAIktA4Qg8ALg8AJIhkARQkYAKiaAAIgegBg");
	this.shape_39.setTransform(138.4,285.3);

	this.shape_40 = new cjs.Shape();
	this.shape_40.graphics.f().s("#333333").ss(1,1,1).p("Aoqh2QAeAGAeAEQBKALBHgKQB9gMBbhPQBBg4AshYQAmAFAnANQBbAfBfBLQBRA5BOBeQA/BIA0BPQAXBCATA/QiNAjiJAnQg2APg2ANQgvAMgqAKQktAIiigCQgpAAgcgCQBni2hYifQgegxgugoQgVgOgUgPg");
	this.shape_40.setTransform(141.3,281.2);

	this.shape_41 = new cjs.Shape();
	this.shape_41.graphics.f("#FFFFFF").s().p("Al/FXIhFgCQBni2hYifQgegxgugoIgpgdIA8AKQBKALBHgKQB9gMBbhPQBBg4AshYQAmAFAnANQBbAfBfBLQBRA5BOBeQA/BIA0BPQAXBCATA/QiNAjiJAnQg2APg2ANIhZAWQj7AGiaAAIg6AAg");
	this.shape_41.setTransform(141.3,281.2);

	this.shape_42 = new cjs.Shape();
	this.shape_42.graphics.f().s("#333333").ss(1,1,1).p("AokhWQAeADAdACQBHAHBFgPQB5gRBZhRQBBg7AshWQAkACAmAKQBaAXBgBAQBTAxBPBXQBCBEA1BMQAUBBASBAQiEArh7AxQgwASgwAQQgqAPgkANQknAFiogCQgoAAgcgCQBNiphdiRQgigrgtgjQgWgNgUgMg");
	this.shape_42.setTransform(144.3,277.1);

	this.shape_43 = new cjs.Shape();
	this.shape_43.graphics.f("#FFFFFF").s().p("AlWFNIhFgCQBNiphdiRQgigrgtgjIgpgZIA6AFQBIAHBFgPQB5gRBYhRQBAg7AthWQAkACAmAKQBZAXBgBAQBTAxBQBXQBCBEA2BMIAlCBQiEArh7AxQgwASgwAQIhPAcQjhADiYAAIhUAAg");
	this.shape_43.setTransform(144.3,277.1);

	this.shape_44 = new cjs.Shape();
	this.shape_44.graphics.f().s("#333333").ss(1,1,1).p("Aodg3QAdABAdABQBEABBEgTQB0gXBXhTQA/g8AshVQAlgCAjAHQBYAPBhA3QBVAoBRBQQBEA/A4BJQARBBAPBBQh7AzhrA6QgrAWgqATQgkASggAPQkgADitgCQgnAAgdgCQAyichiiDQgkglgugeQgVgLgUgLg");
	this.shape_44.setTransform(147.2,273);

	this.shape_45 = new cjs.Shape();
	this.shape_45.graphics.f("#FFFFFF").s().p("AkuFDIhFgCQAzichiiDQgkglgugeIgpgWIA6ACQBEABBEgTQBzgXBYhTQA/g8AshVQAlgCAiAHQBZAPBhA3QBVAoBRBQQBEA/A4BJIAgCCQh7AzhsA6QgqAWgqATIhEAhIk7ACIiSgBg");
	this.shape_45.setTransform(147.2,273);

	this.shape_46 = new cjs.Shape();
	this.shape_46.graphics.f().s("#333333").ss(1,1,1).p("AoWgXQAbgBAdgCQBCgDBBgXQBwgcBWhWQA+g+ArhUQAlgEAhADQBWAHBiAtQBXAfBTBKQBGA5A7BKQANA+ANBBQhyA7hcBEQglAagkAVQgfAWgaARQkZAAizgBQgngBgegBQAZiPhnh0QgngjgugXQgVgJgUgJg");
	this.shape_46.setTransform(150.1,268.8);

	this.shape_47 = new cjs.Shape();
	this.shape_47.graphics.f("#FFFFFF").s().p("AkFE6IhFgCQAZiPhnh0QgngjgugXIgpgSIA4gDQBCgDBBgXQBwgcBWhWQA+g+ArhUQAlgEAhADQBWAHBiAtQBXAfBTBKQBGA5A7BKIAaB/QhyA7hcBEQglAagkAVIg5AnQkZAAizgBg");
	this.shape_47.setTransform(150.1,268.8);

	this.shape_48 = new cjs.Shape();
	this.shape_48.graphics.f().s("#333333").ss(1,1,1).p("AoQAIQAbgDAbgEQBAgGBAgbQBrgiBUhZQA9g/AshSQAjgIAfAAQBWgBBiAjQBaAXBUBCQBIA1A+BHQAJA+AMBBQhpBDhOBOQgfAdgeAZQgZAZgVATQkTgCi5gCQgnAAgdgBQgCiChshmQgpgdgvgVQgVgHgUgHg");
	this.shape_48.setTransform(153.1,264.6);

	this.shape_49 = new cjs.Shape();
	this.shape_49.graphics.f("#FFFFFF").s().p("AjcExIhFgBQgBiChthmQgpgdgvgVIgpgOIA3gHQBAgGA/gbQBrgiBUhZQA+g/ArhSQAjgIAfAAQBWgBBjAjQBYAXBVBCQBIA1A+BHQAJA+AMBBQhpBDhOBOQgfAdgeAZIguAsInLgEg");
	this.shape_49.setTransform(153.1,264.6);

	this.shape_50 = new cjs.Shape();
	this.shape_50.graphics.f().s("#333333").ss(1,1,1).p("AoJArQAagFAbgHQA9gNA+gdQBmgoBThaQA8hBArhRQAigLAfgDQBTgKBkAaQBbAOBWA8QBLAuBABGQAGBAAJA/QhgBLg/BYQgZAggYAcQgUAcgPAWQkOgFi9gCQgmAAgegBQgch1hxhXQgsgZgvgQQgVgFgUgEg");
	this.shape_50.setTransform(156,260.2);

	this.shape_51 = new cjs.Shape();
	this.shape_51.graphics.f("#FFFFFF").s().p("Ai0EqIhEgBQgch1hxhXQgsgZgvgQIgpgJQAagFAbgHQA9gNA+gdQBmgoBThaQA8hBArhRQAigLAfgDQBTgKBkAaQBbAOBWA8QBLAuBABGQAGBAAJA/QhgBLg/BYQgZAggYAcIgjAyQkOgFi9gCg");
	this.shape_51.setTransform(156,260.2);

	this.shape_52 = new cjs.Shape();
	this.shape_52.graphics.f().s("#333333").ss(1,1,1).p("AoDBQQAagHAagKQA6gRA9gkQBhgqBSheQA6hCAshPQAggOAfgIQBRgRBkAQQBdAGBYA0QBNAqBDBDQACBAAIA/QhXBTgxBiQgTAkgSAfQgPAegJAZQkIgHjCgDQgmAAgegBQg3hnh2hIQgugUgvgMQgWgDgUgCg");
	this.shape_52.setTransform(158.9,255.5);

	this.shape_53 = new cjs.Shape();
	this.shape_53.graphics.f("#FFFFFF").s().p("AiLElIhEgBQg3hnh2hJQgugTgvgMIgqgFQAagHAagKQA6gRA9gkQBhgqBSheQA6hCAshPQAggOAfgIQBRgRBkAQQBdAGBYA0QBNAqBDBDQACBAAIA/QhXBSgxBjQgTAkgSAfQgPAegJAZQkIgHjCgDg");
	this.shape_53.setTransform(158.9,255.5);

	this.shape_54 = new cjs.Shape();
	this.shape_54.graphics.f().s("#333333").ss(1,1,1).p("An8B3QAYgJAagMQA4gWA7goQBcgwBRhgQA5hEArhOQAfgRAegLQBPgaBlAHQBfgDBaAuQBPAkBFBBQgBBAAGBBQhOBZgiBsQgNAogNAhQgJAigEAbQkBgKjIgCQglgBgfAAQhRhah7g6QgxgPgvgHQgWgBgTAAg");
	this.shape_54.setTransform(161.9,250.7);

	this.shape_55 = new cjs.Shape();
	this.shape_55.graphics.f("#FFFFFF").s().p("AhjEjIhDgBQhRhah7g6QgygPgvgHIgpgBQAZgJAZgMQA4gWA7goQBcgwBRhgQA5hEArhOQAfgRAegLQBPgaBlAHQBggDBZAuQBPAkBFBBQgBBAAGBBQhOBZghBsIgaBJQgJAigFAbQkBgKjIgCg");
	this.shape_55.setTransform(161.9,250.7);

	this.shape_56 = new cjs.Shape();
	this.shape_56.graphics.f().s("#333333").ss(1,1,1).p("An2CiQAYgLAYgPQA2gaA6gsQBXg4BPhgQA4hGArhMQAegUAdgPQBOgiBlgDQBhgLBcAnQBRAeBIA/QgFBAAEBCQhFBggSB2QgJArgGAlQgDAlABAdQj6gMjOgDQgmAAgeAAQhrhOiBgqQgzgLgvgCQgXABgTACg");
	this.shape_56.setTransform(164.8,245.4);

	this.shape_57 = new cjs.Shape();
	this.shape_57.graphics.f("#FFFFFF").s().p("Ag6EkIhEAAQhrhOiAgqQg0gLgvgCIgqADQAYgLAZgPQA2gaA5gsQBYg4BOhgQA5hGAqhMQAfgUAcgPQBNgiBmgDQBigLBbAnQBRAeBIA/QgFBAAEBCQhEBggUB2IgNBQQgEAlABAdQj6gMjOgDg");
	this.shape_57.setTransform(164.8,245.4);

	this.shape_58 = new cjs.Shape();
	this.shape_58.graphics.f().s("#333333").ss(1,1,1).p("AnyDPQAXgNAYgRQAzggA4gwQBTg9BNhiQA3hHArhMQAdgXAbgSQBMgqBmgMQBkgVBdAgQBTAZBLA+QgIA/ACBCQg8BogECAQgCAvgBAoQACAnAHAgQj0gPjTgCQglgBgfAAQiFhAiGgcQg2gFgvACQgXADgTAEg");
	this.shape_58.setTransform(168,240);

	this.shape_59 = new cjs.Shape();
	this.shape_59.graphics.f("#FFFFFF").s().p("AgUEoIhEgBQiFhAiGgcQg2gFgvACIgqAHQAXgNAYgRQAzggA4gwQBTg9BNhiQA3hHArhMQAdgXAbgSQBMgqBmgMQBkgVBdAgQBTAZBLA+QgIA/ACBCQg8BogECAIgDBXQACAnAHAgQj0gPjTgCg");
	this.shape_59.setTransform(168,240);

	this.shape_60 = new cjs.Shape();
	this.shape_60.graphics.f().s("#333333").ss(1,1,1).p("AnuD9QAWgQAXgSQAxglA2g0QBOhDBMhlQA2hIAqhKQAdgbAagVQBKgyBngWQBmgdBeAZQBWAUBNA7QgLA+AABDQg0BxAMCJQADAyAGArQAHArAMAiQjtgRjbgDQgjAAgfAAQiggziKgOQg5AAgwAIQgWAEgTAGg");
	this.shape_60.setTransform(171.2,234.4);

	this.shape_61 = new cjs.Shape();
	this.shape_61.graphics.f("#FFFFFF").s().p("AAQEsIhCAAQiggziKgOQg5AAgwAIQgWAEgTAGIAtgiQAxglA2g0QBOhDBMhlQA2hIAqhKQAdgbAagVQBKgyBngWQBmgdBeAZQBWAUBNA7QgLA+AABDQg0BxAMCJQADAyAGArQAHArAMAiQjtgRjbgDg");
	this.shape_61.setTransform(171.2,234.4);

	this.shape_62 = new cjs.Shape();
	this.shape_62.graphics.f().s("#333333").ss(1,1,1).p("AnzEtQAVgSAXgVQAugpA0g5QBKhIBKhnQA1hLAqhIQAbgeAZgYQBIg7BpggQBnglBhASQBYAOBPA6QgPA+gCBDQgqB5AaCSQAJA2AMAuQANAuARAlQjmgUjhgDQgkAAgeAAQi6gmiPABQg8AFgwAMQgWAHgTAIg");
	this.shape_62.setTransform(175.3,228.7);

	this.shape_63 = new cjs.Shape();
	this.shape_63.graphics.f("#FFFFFF").s().p("AAtEyIhCAAQi6gmiPABQg8AFgwAMQgWAHgTAIIAsgnQAugpA0g5QBKhIBKhnQA1hLAqhIQAbgeAZgYQBIg7BpggQBnglBhASQBYAOBPA6QgPA+gCBDQgqB5AaCSQAJA2AMAuQANAuARAlQjmgUjhgDg");
	this.shape_63.setTransform(175.3,228.7);

	this.shape_64 = new cjs.Shape();
	this.shape_64.graphics.f().s("#333333").ss(1,1,1).p("AoEFYQAVgVAVgXQAtguAyg9QBFhOBJhrQAzhKAqhHQAaghAYgcQBJhCBngqQBpguBjALQBaAJBSA3QgSA+gEBDQgiCDApCbQAPA6ASAxQATAwAWAoQjggXjngDQgkAAgeAAQjTgYiVAPQg+AKgwARQgXAIgTALg");
	this.shape_64.setTransform(180.6,223.5);

	this.shape_65 = new cjs.Shape();
	this.shape_65.graphics.f("#FFFFFF").s().p("AnaEsQAtguAzg9QBEhOBKhrQAyhKArhHIAxg9QBJhCBngqQBqguBiALQBaAJBSA3QgTA+gDBDQghCDAoCbQAPA6ASAxQASAwAXAoQjfgXjogDIhBAAQjUgYiVAPQg+AKgwARQgWAIgUALQAVgVAVgXg");
	this.shape_65.setTransform(180.6,223.5);

	this.shape_66 = new cjs.Shape();
	this.shape_66.graphics.f().s("#333333").ss(1,1,1).p("AoVF1QAUgWAVgaQAqgzAxhBQBAhTBIhuQAyhLAqhGQAYgkAWggQBIhKBogzQBsg3BjAFQBdADBVA1QgWA+gGBDQgYCLA3CkQAVA+AXA0QAYAzAdAqQjagZjsgDQgkAAggAAQjsgLiaAeQhAAOgxAWQgXALgTAMg");
	this.shape_66.setTransform(185.8,219.6);

	this.shape_67 = new cjs.Shape();
	this.shape_67.graphics.f("#FFFFFF").s().p("AnsFFQAqgzAxhBQBAhTBIhuQAyhLAqhGIAuhEQBIhKBogzQBsg3BjAFQBdADBVA1QgWA+gGBDQgYCLA3CkQAVA+AXA0QAYAzAdAqQjagZjsgDIhEAAQjsgLiaAeQhAAOgxAWQgXALgTAMIApgwg");
	this.shape_67.setTransform(185.8,219.6);

	this.shape_68 = new cjs.Shape();
	this.shape_68.graphics.f().s("#333333").ss(1,1,1).p("AifjCQBGhSBpg9QDUh7C1BqQhRDCBnEAQA0CBBDBaQjSgbjzgDQnkgGiiB9QBkiDCbj3QBOh6A5hig");
	this.shape_68.setTransform(191.1,215.6);

	this.shape_69 = new cjs.Shape();
	this.shape_69.graphics.f("#FFFFFF").s().p("AkmAaQBOh6A5hiQBGhSBpg9QDUh7C1BqQhRDCBnEAQA0CBBDBaQjSgbjzgDQnkgGiiB9QBkiDCbj3g");
	this.shape_69.setTransform(191.1,215.6);

	this.shape_70 = new cjs.Shape();
	this.shape_70.graphics.f().s("#333333").ss(1,1,1).p("AofGTQBjh+CMjmQAIgNAIgMQAegyAcgvQAPgaANgYQARgaAQgYQA4hGA0gnQApgeAtgaQCghYCNAlQAsAOAqAcQhRDDBjEDQAQAtAUAqQAjBMArA7QhegFhkgBQh1gNh+gGQg+gCg2gBQmFgDiRBrg");
	this.shape_70.setTransform(190.8,231);

	this.shape_71 = new cjs.Shape();
	this.shape_71.graphics.f("#FFFFFF").s().p("AkwAvIAQgZIA6hhIAcgyIAhgyQA4hGA0gnQApgeAtgaQCghYCNAlQAtAOAqAcQhSDDBjEDQARAtATAqQAkBMAqA7QhegFhkgBQh1gNh+gGQg9gCg3gBQmEgDiSBrQBjh+CMjmg");
	this.shape_71.setTransform(190.8,231);

	this.shape_72 = new cjs.Shape();
	this.shape_72.graphics.f().s("#333333").ss(1,1,1).p("AoZGTQBoh/CIjoQAIgNAHgNQAegyAagxQAOgZANgZQARgaASgYQA5hEA2gmQApgdAtgZQCihXCPAmQAoAQAmAeQhRDFBdEEQARAvASAqQAiBNApA9QhYAChbAFQh0gRh/gKQg9gEg3gDQmEgPiVBpg");
	this.shape_72.setTransform(190.5,246.4);

	this.shape_73 = new cjs.Shape();
	this.shape_73.graphics.f("#FFFFFF").s().p("AkpAsIAPgaQAegyAagxIAbgyQARgaARgYQA7hEA1gmQApgdAtgZQCihXCPAmQAoAQAmAeQhSDFBeEEQAQAvATAqQAiBNApA9QhYAChbAFQh1gRh9gKQg+gEg3gDQmEgPiVBpQBoh/CIjog");
	this.shape_73.setTransform(190.5,246.4);

	this.shape_74 = new cjs.Shape();
	this.shape_74.graphics.f().s("#333333").ss(1,1,1).p("AoSGSQBsiBCEjqQAHgNAHgNQAdgyAZgyQANgaANgaQARgYATgYQA8hDA2glQAqgdAugYQCkhUCQAnQAjASAjAgQhSDFBZEHQAPAvASArQAhBOAnA/QhQAJhUALQhzgVh+gOQg9gGg5gFQmCgciZBog");
	this.shape_74.setTransform(190.2,261.9);

	this.shape_75 = new cjs.Shape();
	this.shape_75.graphics.f("#FFFFFF").s().p("AkiAnIAOgaQAdgyAZgyIAag0IAkgwQA8hDA2glQAqgdAugYQCkhUCQAnQAjASAiAgQhSDFBaEHQAPAvASArQAhBOAmA/IikAUQhygVh/gOQg8gGg6gFQmBgciaBoQBsiBCFjqg");
	this.shape_75.setTransform(190.2,261.9);

	this.shape_76 = new cjs.Shape();
	this.shape_76.graphics.f().s("#333333").ss(1,1,1).p("AoMGRQBwiCCAjrQAHgNAHgNQAcg0AYgyQANgbAMgaQARgYAUgYQA+hCA3gkQAqgcAvgXQCnhRCQAoQAfAUAfAhQhSDHBUEJQAPAvARAtQAfBOAlBAQhJARhMARQhygZh+gSQg9gIg5gHQmCgoicBlg");
	this.shape_76.setTransform(189.9,277.3);

	this.shape_77 = new cjs.Shape();
	this.shape_77.graphics.f("#FFFFFF").s().p("AkcAkIAOgaQAcg0AYgyIAZg1QARgYAUgYQA+hCA3gkQAqgcAvgXQCnhRCQAoQAfAUAfAhQhSDHBUEJQAPAvARAtQAfBOAlBAIiVAiQhygZh+gSQg9gIg5gHQmCgoicBlQBwiCCAjrg");
	this.shape_77.setTransform(189.9,277.3);

	this.shape_78 = new cjs.Shape();
	this.shape_78.graphics.f().s("#333333").ss(1,1,1).p("AoGGFQB0iEB8jsQAHgOAHgLQAbg2AXg0QAMgbALgaQASgYAVgXQBBhBA4gjQAqgbAwgXQCohPCSApQAaAXAbAjQhSDHBPEMQAOAwAQAtQAeBPAkBCQhCAYhEAYQhygeh9gWQg8gKg6gJQmCg1igBkg");
	this.shape_78.setTransform(189.7,293.9);

	this.shape_79 = new cjs.Shape();
	this.shape_79.graphics.f("#FFFFFF").s().p("ACRFpQg7gKg7gJQmBg1igBkQBziEB9jsIAOgZQAbg2AXg0IAXg1QASgYAVgXQBBhBA4gjQApgbAxgXQCohPCSApQAaAXAbAjQhSDHBPEMQAOAwAQAtQAeBPAkBCIiHAwQhxgeh+gWg");
	this.shape_79.setTransform(189.7,293.9);

	this.shape_80 = new cjs.Shape();
	this.shape_80.graphics.f().s("#333333").ss(1,1,1).p("AoAF2QB4iFB5jtQAGgMAHgOQAag3AWg0QALgcALgbQASgWAWgYQBEg/A4giQArgbAxgWQCqhMCSAqQAXAZAXAkQhTDJBLEOQANAwAPAuQAdBRAiBCQg7Ahg8AdQhyghh9gbQg8gMg6gLQmChBijBhg");
	this.shape_80.setTransform(189.4,310.7);

	this.shape_81 = new cjs.Shape();
	this.shape_81.graphics.f("#FFFFFF").s().p("ACbFtQg7gMg7gLQmChBijBhQB4iFB5jtIANgaQAag3AWg0IAWg3QASgWAWgYQBDg/A5giQArgbAwgWQCqhMCTAqQAXAZAXAkQhTDJBLEOQANAwAPAuQAdBRAiBCQg8Ahg7AdQhyghh9gbg");
	this.shape_81.setTransform(189.4,310.7);

	this.shape_82 = new cjs.Shape();
	this.shape_82.graphics.f().s("#333333").ss(1,1,1).p("An6FpQB8iHB1jtQAGgOAHgNQAZg4AVg2QAKgcAKgbQATgWAYgXQBFg+A5ghQAsgbAxgVQCshJCTArQASAaAUAmQhTDKBGERQAMAwAPAwQAbBRAhBEQg1Aog0AjQhwglh9gfQg8gOg6gNQmChOinBgg");
	this.shape_82.setTransform(189.1,327.4);

	this.shape_83 = new cjs.Shape();
	this.shape_83.graphics.f("#FFFFFF").s().p("AClFyQg8gOg6gNQmChOinBgQB8iHB1jtIANgbQAZg4AVg2IAUg3QATgWAYgXQBFg+A5ghQAsgbAxgVQCshJCTArQASAaAUAmQhTDKBGERQAMAwAPAwQAbBRAhBEQg1Aog0AjQhwglh9gfg");
	this.shape_83.setTransform(189.1,327.4);

	this.shape_84 = new cjs.Shape();
	this.shape_84.graphics.f().s("#333333").ss(1,1,1).p("An0FaQCAiHBxjvQAGgOAGgOQAZg5ATg2QAKgcAKgcQASgWAagXQBHg8A6ggQAtgaAygUQCthHCUAsQAOAcAQAoQhUDLBCETQAMAxANAwQAaBSAfBFQgtAwgtAqQhugqh9gjQg8gQg7gPQmBhairBdg");
	this.shape_84.setTransform(188.8,344.2);

	this.shape_85 = new cjs.Shape();
	this.shape_85.graphics.f("#FFFFFF").s().p("ACuF2Qg7gQg7gPQmBhairBdQCBiHBwjvIAMgcQAZg5ATg2IAUg4QASgWAagXQBHg8A6ggQAtgaAxgUQCuhHCUAsQAPAcAPAoQhTDLBBETQAMAxANAwQAaBSAfBFQgtAwgtAqQhvgqh9gjg");
	this.shape_85.setTransform(188.8,344.2);

	this.shape_86 = new cjs.Shape();
	this.shape_86.graphics.f().s("#333333").ss(1,1,1).p("AntFNQCEiKBsjwQAGgOAGgOQAYg5ASg4QAKgdAIgcQAUgVAagWQBJg7A7ggQAugZAygUQCwhECVAtQAKAfALApQhTDMA8EVQALAyANAxQAYBTAeBHQgnA3gkAwQhuguh9gnQg7gTg7gQQmBhniuBcg");
	this.shape_86.setTransform(188.5,361);

	this.shape_87 = new cjs.Shape();
	this.shape_87.graphics.f("#FFFFFF").s().p("AC4F7Qg7gTg7gQQmBhniuBcQCEiKBsjwIAMgcQAYg5ASg4IASg5QAUgVAagWQBJg7A7ggQAugZAygUQCwhECVAtIAVBIQhTDMA8EVQALAyANAxQAYBTAeBHQgnA3gkAwQhuguh9gng");
	this.shape_87.setTransform(188.5,361);

	this.shape_88 = new cjs.Shape();
	this.shape_88.graphics.f().s("#333333").ss(1,1,1).p("AnnE/QCJiLBojyQAGgOAGgOQAXg6ARg5QAIgdAIgdQAUgUAcgWQBLg6A6gfQAxgYAygTQCyhCCWAuQAFAhAIAqQhUDNA4EYQAKAzANAyQAWBUAcBIQgfA+gdA2Qhtgyh8grQg8gUg7gTQmBh0iyBbg");
	this.shape_88.setTransform(188.2,377.7);

	this.shape_89 = new cjs.Shape();
	this.shape_89.graphics.f("#FFFFFF").s().p("ADDF/Ih3gnQmBh0iyBbQCIiLBpjyIAMgcQAXg6AQg5IARg6QAUgUAcgWQBLg6A6gfQAxgYAygTQCyhCCWAuIANBLQhUDNA4EYQAKAzANAyQAVBUAdBIIg8B0Qhugyh7grg");
	this.shape_89.setTransform(188.2,377.7);

	this.shape_90 = new cjs.Shape();
	this.shape_90.graphics.f().s("#333333").ss(1,1,1).p("AnhExQCNiMBkjzQAGgPAFgPQAWg6AQg6QAIgdAIgeQAUgTAdgWQBNg5A7gdQAygYAzgSQCzg/CXAvQABAiAEAsQhUDOAzEbQAJAzAMAyQAVBWAbBJQgZBGgUA8Qhtg2h8gwQg7gWg8gUQmAiBi2BZg");
	this.shape_90.setTransform(187.9,394.5);

	this.shape_91 = new cjs.Shape();
	this.shape_91.graphics.f("#FFFFFF").s().p("ADMGDQg7gWg8gUQmAiBi2BZQCNiMBkjzIALgeQAWg6AQg6IAQg7QAUgTAdgWQBNg5A7gdQAygYAzgSQCzg/CXAvQABAiAEAsQhUDOAzEbQAJAzAMAyQAVBWAbBJQgZBGgUA8Qhtg2h8gwg");
	this.shape_91.setTransform(187.9,394.5);

	this.shape_92 = new cjs.Shape();
	this.shape_92.graphics.f().s("#333333").ss(1,1,1).p("AnaEjQCQiNBgj1QAGgOAFgPQAVg8APg6QAIgeAGgeQAUgTAfgWQBPg3A8gdQAzgXAzgRQC2g9CXAwQgDAlABAuQhVDPAuEdQAJAzALA0QATBWAZBKQgSBOgMBCQhsg6h7g0Qg7gYg8gWQmAiNi5BWg");
	this.shape_92.setTransform(187.7,411.2);

	this.shape_93 = new cjs.Shape();
	this.shape_93.graphics.f("#FFFFFF").s().p("ADWGIQg7gYg8gWQmBiNi5BWQCRiNBgj1IALgdQAVg8APg6IAOg8QAVgTAegWQBQg3A7gdQAzgXAzgRQC2g9CXAwQgDAlAAAuQhUDPAvEdQAIAzALA0QATBWAaBKQgSBOgNBCQhsg6h7g0g");
	this.shape_93.setTransform(187.7,411.2);

	this.shape_94 = new cjs.Shape();
	this.shape_94.graphics.f().s("#333333").ss(1,1,1).p("AnVEVQCWiPBbj1QAGgPAFgPQAVg9ANg7QAHgfAGgeQAVgSAggWQBRg1A9gcQA0gXAzgRQC4g5CYAxQgHAmgEAvQhVDRAqEfQAIA0AKA1QARBXAZBLQgLBWgFBIQhrg+h7g4Qg7gag8gZQmAiZi+BUg");
	this.shape_94.setTransform(187.4,427.9);

	this.shape_95 = new cjs.Shape();
	this.shape_95.graphics.f("#FFFFFF").s().p("ADgGNQg7gag9gZQl/iZi+BUQCViPBcj1IALgeQAUg9AOg7IANg9QAVgSAggWQBRg1A8gcQA1gXAzgRQC3g5CZAxQgIAmgDAvQhVDRAqEfQAHA0ALA1QARBXAZBLQgMBWgEBIQhrg+h7g4g");
	this.shape_95.setTransform(187.4,427.9);

	this.shape_96 = new cjs.Shape();
	this.shape_96.graphics.f().s("#333333").ss(1,1,1).p("AnUEHQCYiQBZj3QAFgPAFgQQATg9ANg8QAGgfAFgfQAVgRAigWQBUg0A9gbQA0gWA0gQQC6g3CZAyQgLApgIAwQhVDSAlEhQAHA1AJA1QARBYAWBNQgEBdAEBPQhrhDh7g8Qg6gcg9gaQmAimjABSg");
	this.shape_96.setTransform(187.7,444.7);

	this.shape_97 = new cjs.Shape();
	this.shape_97.graphics.f("#FFFFFF").s().p("ADjGRQg6gcg9gaQmAimjABSQCYiQBZj3IAKgfQATg9ANg8IALg+QAVgRAigWQBUg0A9gbQA0gWA0gQQC6g3CZAyQgLApgIAwQhVDSAlEhQAHA1AJA1QARBYAWBNQgEBdAEBPQhrhDh7g8g");
	this.shape_97.setTransform(187.7,444.7);

	this.shape_98 = new cjs.Shape();
	this.shape_98.graphics.f().s("#333333").ss(1,1,1).p("AnXD6QCdiSBUj4QAFgQAFgPQATg+ALg+QAFgfAFgfQAVgRAjgVQBWgzA+gaQA2gWA0gPQC8g1CaAzQgQArgLAzQhWDSAhEkQAGA1AIA3QAPBYAVBPQADBkALBVQhphHh7hAQg6geg9gcQmAizjEBRg");
	this.shape_98.setTransform(188.3,461.4);

	this.shape_99 = new cjs.Shape();
	this.shape_99.graphics.f("#FFFFFF").s().p("ADkGWQg6geg9gcQmAizjEBRQCdiSBUj4IAKgfQATg/ALg9IAKg+QAVgRAjgVQBWg0A+gZQA2gWA0gPQC8g1CaAzQgQArgLAzQhWDSAhEkQAGA1AIA3QAPBYAVBPQADBkALBVQhphHh7hAg");
	this.shape_99.setTransform(188.3,461.4);

	this.shape_100 = new cjs.Shape();
	this.shape_100.graphics.f().s("#333333").ss(1,1,1).p("AnaDsQChiTBQj6QAFgQAFgPQARg/ALg+QAEggAEggQAXgQAjgVQBYgyA/gZQA3gVA1gOQC9gyCcA0QgVAtgPA0QhWDTAcEnQAFA1AIA4QANBZATBQQAKBsAUBbQhphLh6hEQg7ggg8gfQmAi/jIBPg");
	this.shape_100.setTransform(188.9,478.1);

	this.shape_101 = new cjs.Shape();
	this.shape_101.graphics.f("#FFFFFF").s().p("ADkGbQg5ggg+gfQl/i/jIBPQChiTBRj6IAJgfQASg/AKg+IAIhAQAXgQAjgVQBZgyA+gZQA3gVA0gOQC+gyCcA0QgVAtgPA0QhWDTAcEnQAFA1AIA4QAOBZASBQQALBsATBbQhphLh7hEg");
	this.shape_101.setTransform(188.9,478.1);

	this.shape_102 = new cjs.Shape();
	this.shape_102.graphics.f().s("#333333").ss(1,1,1).p("AncDeQCliUBMj8QAFgQAEgQQARg/AJg/QAEggAEggQAWgQAlgVQBagwBAgZQA3gUA1gNQDAgwCcA1QgZAvgSA1QhWDVAXEpQAEA2AHA4QAMBbASBRQAQB0AcBhQhohPh7hJQg5gig+ggQl/jMjLBNg");
	this.shape_102.setTransform(189.5,494.9);

	this.shape_103 = new cjs.Shape();
	this.shape_103.graphics.f("#FFFFFF").s().p("ADlGfQg5gig+ggQl/jMjLBNQCliUBMj8IAJggQARg/AJg/IAIhAQAWgQAlgVQBagwBAgZQA3gUA1gNQDAgwCcA1QgZAvgSA1QhWDVAXEpQAEA2AHA4QAMBbASBRQAQB0AcBhQhohPh7hJg");
	this.shape_103.setTransform(189.5,494.9);

	this.shape_104 = new cjs.Shape();
	this.shape_104.graphics.f().s("#333333").ss(1,1,1).p("AjHmkQAXgPAngVQBNgpBPgdQEEhdDJBFQijETA1HGQAbDkA7CtQiYh7jBhsQl/jYjPBLQCpiWBJj9QAWhQAKhQg");
	this.shape_104.setTransform(190.1,511.6);

	this.shape_105 = new cjs.Shape();
	this.shape_105.graphics.f("#FFFFFF").s().p("ABvFdQl/jYjPBLQCpiWBJj9QAWhQAKhQIAGhBQAXgPAngVQBNgpBPgdQEEhdDJBFQijETA1HGQAbDkA7CtQiYh7jBhsg");
	this.shape_105.setTransform(190.1,511.6);

	this.shape_106 = new cjs.Shape();
	this.shape_106.graphics.f().s("#333333").ss(1,1,1).p("AndDmQCkicBIj9QAXhRALhRIAGhBQAWgRAmgWQAlgWAmgTQAogRAngOQEFhaDMA+QgJASgIASQh4EQA7GiQANBgATBWQAPBxAZBgQichzjDhjQl+jJjYBJg");
	this.shape_106.setTransform(182.6,526.2);

	this.shape_107 = new cjs.Shape();
	this.shape_107.graphics.f("#FFFFFF").s().p("AB5FmQl+jJjYBJQCkicBIj9QAXhRALhRIAGhBQAWgRAmgWQAlgWAmgTQAogRAngOQEFhaDMA+IgRAkQh4EQA7GiQANBgATBWQAPBxAZBgQichzjDhjg");
	this.shape_107.setTransform(182.6,526.2);

	this.shape_108 = new cjs.Shape();
	this.shape_108.graphics.f().s("#333333").ss(1,1,1).p("AnhD8QCeijBIj9QAXhSAMhRIAHhCQAVgRAkgXQAkgYAlgVQAogQAngOQEFhYDQA3QgHARgGARQhlEUBEGeQAQBfAVBWQAGBsAQBbQighpjGhcQl8i6jhBIg");
	this.shape_108.setTransform(175.9,540.9);

	this.shape_109 = new cjs.Shape();
	this.shape_109.graphics.f("#FFFFFF").s().p("AB8FuQl9i6jgBIQCeijBIj9QAXhSAMhRIAHhCQAVgRAkgXQAjgYAmgVQAogQAngOQEFhYDQA3IgNAiQhkEUBDGeQAPBfAVBWQAHBsAQBbQighpjGhcg");
	this.shape_109.setTransform(175.9,540.9);

	this.shape_110 = new cjs.Shape();
	this.shape_110.graphics.f().s("#333333").ss(1,1,1).p("AnoESQCYipBJj/QAWhRANhSIAIhDQAUgSAigYQAjgZAjgXQApgQAqgOQEDhVDUAxQgFAPgFAPQhREZBMGZQASBfAXBXQgCBmAHBXQilhhjIhUQl7irjpBHg");
	this.shape_110.setTransform(169.3,555.5);

	this.shape_111 = new cjs.Shape();
	this.shape_111.graphics.f("#FFFFFF").s().p("AB8F2Ql7irjpBHQCYipBJj/QAWhRANhSIAIhDQAUgSAigYQAjgZAjgXQApgQAqgOQEDhVDUAxIgKAeQhREZBMGZQASBfAXBXQgCBmAHBXQilhhjIhUg");
	this.shape_111.setTransform(169.3,555.5);

	this.shape_112 = new cjs.Shape();
	this.shape_112.graphics.f().s("#333333").ss(1,1,1).p("An1EoQCTivBIj/QAXhSANhTIAJhDQATgUAhgYQAhgbAhgYQAqgQArgOQEDhTDXArQgDANgCAPQg+EdBUGUQAVBfAZBXQgLBhgCBRQiqhYjKhMQl6icjxBGg");
	this.shape_112.setTransform(163.5,570.1);

	this.shape_113 = new cjs.Shape();
	this.shape_113.graphics.f("#FFFFFF").s().p("AB2F+Ql6icjyBGQCTivBJj/QAWhSAOhTIAJhDQATgUAggYQAhgbAjgYQApgQAqgOQEEhTDXArIgGAcQg9EdBUGUQAUBfAaBXQgLBhgCBRQiqhYjKhMg");
	this.shape_113.setTransform(163.5,570.1);

	this.shape_114 = new cjs.Shape();
	this.shape_114.graphics.f().s("#333333").ss(1,1,1).p("AoFE+QCNi1BIkAQAXhTAOhTIAJhDQATgVAfgaQAggcAggaQAqgPArgNQEEhRDbAjQgBANgBANQgrEhBdGQQAXBeAbBYQgTBbgLBNQiuhPjMhEQl5iOj6BFg");
	this.shape_114.setTransform(157.8,584.7);

	this.shape_115 = new cjs.Shape();
	this.shape_115.graphics.f("#FFFFFF").s().p("ABuGHQl5iOj6BFQCNi1BIkAQAXhTAOhTIAJhDQATgVAfgaQAggcAggaQAqgPArgNQEEhRDbAjIgCAaQgrEhBdGQQAXBeAbBYQgTBbgLBNQiuhPjMhEg");
	this.shape_115.setTransform(157.8,584.7);

	this.shape_116 = new cjs.Shape();
	this.shape_116.graphics.f().s("#333333").ss(1,1,1).p("AoVFUQCIi8BHj/QAXhUAPhUIAKhDQATgWAdgbQAegeAfgcQArgOArgNQEEhPDfAdQABALABAMQgYElBmGMQAZBeAdBYQgbBVgUBJQizhGjPg9Ql3h+kDBDg");
	this.shape_116.setTransform(152.2,599.3);

	this.shape_117 = new cjs.Shape();
	this.shape_117.graphics.f("#FFFFFF").s().p("ABlGPQl3h+kDBDQCIi8BHj/QAXhUAPhUIAKhDQATgWAdgbQAegeAfgcQArgOArgNQEEhPDfAdIACAXQgYElBmGMQAZBeAdBYQgbBVgUBJQizhGjPg9g");
	this.shape_117.setTransform(152.2,599.3);

	this.shape_118 = new cjs.Shape();
	this.shape_118.graphics.f().s("#333333").ss(1,1,1).p("AolFrQCCjCBIkBQAXhTAPhVIALhEQASgXAbgcQAdgfAegeQArgOAsgNQEEhMDjAXQACAJAEALQgFEpBuGIQAbBdAgBYQgkBQgdBFQi4g+jRg1Ql2hvkLBCg");
	this.shape_118.setTransform(146.6,613.9);

	this.shape_119 = new cjs.Shape();
	this.shape_119.graphics.f("#FFFFFF").s().p("ABdGYQl3hvkLBCQCCjCBIkBQAXhTAQhVIAKhEQASgXAbgcQAdgfAegeQArgOAsgNQEEhMDjAXIAGAUQgFEpBuGIQAbBdAgBYQgkBQgdBFQi4g+jQg1g");
	this.shape_119.setTransform(146.6,613.9);

	this.shape_120 = new cjs.Shape();
	this.shape_120.graphics.f().s("#333333").ss(1,1,1).p("Ao1GCQB9jJBHkBQAXhUARhVIALhEQARgZAagcQAcghAcggQArgOAtgMQEFhKDmAQQAFAIAFAJQAOEuB2GDQAeBeAiBYQgtBKglBAQi9g1jSgtQl2hgkUBBg");
	this.shape_120.setTransform(140.9,628.4);

	this.shape_121 = new cjs.Shape();
	this.shape_121.graphics.f("#FFFFFF").s().p("ABUGhQl0hgkVBBQB9jJBHkBQAXhUARhVIALhEQARgZAbgcIA3hBQAsgOAsgMQEFhKDmAQIAKARQAOEuB2GDQAfBeAhBYIhTCKQi7g1jUgtg");
	this.shape_121.setTransform(140.9,628.4);

	this.shape_122 = new cjs.Shape();
	this.shape_122.graphics.f().s("#333333").ss(1,1,1).p("ApFGYQB4jOBHkCQAXhVARhVIANhFQAQgaAYgdQAagjAbghQAsgNAtgMQEFhIDpAJQAHAIAIAHQAhEyB/F/QAgBdAkBZQg1BEgvA8QjBgtjVglQl0hRkdA/g");
	this.shape_122.setTransform(135.3,643);

	this.shape_123 = new cjs.Shape();
	this.shape_123.graphics.f("#FFFFFF").s().p("ABMGqQl0hRkdA/QB4jOBHkCQAXhVARhVIANhFQAQgaAYgdIA1hEQAsgNAtgMQEFhIDpAJIAPAPQAhEyB/F/QAgBdAkBZQg1BEgvA8QjBgtjVglg");
	this.shape_123.setTransform(135.3,643);

	this.shape_124 = new cjs.Shape();
	this.shape_124.graphics.f().s("#333333").ss(1,1,1).p("ApVGwQByjVBHkCQAYhVARhWIAOhFQAPgcAXgeQAYgkAZgjQAtgNAtgMQEGhFDtADQAJAGAJAGQA0E2CIF6QAjBdAmBZQg9A/g5A3QjFgkjYgdQlyhDkmA/g");
	this.shape_124.setTransform(129.6,657.4);

	this.shape_125 = new cjs.Shape();
	this.shape_125.graphics.f("#FFFFFF").s().p("ABDG0QlyhDkmA/QByjVBHkCQAYhVARhWIAOhFQAPgcAXgeQAYgkAZgjIBagZQEGhFDtADIASAMQA0E2CIF6QAjBdAmBZQg9A/g5A3QjFgkjYgdg");
	this.shape_125.setTransform(129.6,657.4);

	this.shape_126 = new cjs.Shape();
	this.shape_126.graphics.f().s("#333333").ss(1,1,1).p("AplHIQBtjcBHkCQAXhWAThXIAOhFQAPgdAVgfQAXglAXglQAugMAtgMQEGhDDxgEQALAFALAEQBHE7CRF2QAlBdAoBZQhGA5hCAyQjJgbjagVQlxg0kvA+g");
	this.shape_126.setTransform(124,671.9);

	this.shape_127 = new cjs.Shape();
	this.shape_127.graphics.f("#FFFFFF").s().p("AA7G+Qlxg0kvA+QBtjcBHkCQAXhWAThXIAOhFQAPgdAVgfIAuhKIBbgYQEGhDDxgEIAWAJQBHE7CRF2QAlBdAoBZQhGA5hCAyQjJgbjagVg");
	this.shape_127.setTransform(124,671.9);

	this.shape_128 = new cjs.Shape();
	this.shape_128.graphics.f().s("#333333").ss(1,1,1).p("Ap0HfQBnjhBHkDQAXhXAThXIAPhGQAOgeATggQAWgnAWgmQAugMAugLQEHhBD0gLQANAEANADQBaE/CZFxQAoBdAqBZQhOA0hLAuQjPgTjbgNQlwglk3A8g");
	this.shape_128.setTransform(118.4,686.3);

	this.shape_129 = new cjs.Shape();
	this.shape_129.graphics.f("#FFFFFF").s().p("AAzHIQlxglk3A8QBojhBGkDQAYhXAThXIAPhGQAOgeATggIAshNIBcgXQEHhBD0gLIAaAHQBaE/CZFxQAoBdApBZQhNA0hLAuQjOgTjcgNg");
	this.shape_129.setTransform(118.4,686.3);

	this.shape_130 = new cjs.Shape();
	this.shape_130.graphics.f().s("#333333").ss(1,1,1).p("AqFHsQBijoBHkEQAXhWAUhYIAQhGQANgfASghQAUgpAVgoQAugMAvgLQEHg+D3gRQAPACAQACQBtFDChFtQArBcAsBaQhXAvhUApQjTgKjegFQlvgXlAA7g");
	this.shape_130.setTransform(112.7,701.9);

	this.shape_131 = new cjs.Shape();
	this.shape_131.graphics.f("#FFFFFF").s().p("AncAAQAXhWAUhYIAQhGQAOgfARghIAphRIBdgXQEHg+D3gRIAfAEQBtFDChFtQArBdAsBZQhXAvhUApQjSgKjfgFQlvgXlAA7QBijoBHkEg");
	this.shape_131.setTransform(112.7,701.9);

	this.shape_132 = new cjs.Shape();
	this.shape_132.graphics.f().s("#333333").ss(1,1,1).p("AqUH1QBcjuBGkGQAYhWAVhYIAQhHQANggAQgiQATgqATgqQAvgLAvgKQEJg8D5gZQARABASAAQCAFICqFpQAsBcAuBaQhfAohdAlQjXgBjgADQlugHlIA5g");
	this.shape_132.setTransform(107.1,717.8);

	this.shape_133 = new cjs.Shape();
	this.shape_133.graphics.f("#FFFFFF").s().p("AnyABQAYhWAVhYIAQhHQANggAQgiIAmhUIBegWQEJg7D5gZIAjABQCAFICqFpQAsBbAuBbQhfAohdAlQjXgBjgADQlugIlIA6QBcjuBGkGg");
	this.shape_133.setTransform(107.1,717.8);

	this.shape_134 = new cjs.Shape();
	this.shape_134.graphics.f().s("#333333").ss(1,1,1).p("AqkH+QBXj1BGkGQAYhWAVhZIARhHQAMgiAPgiQARgsASgsQAvgKAwgLQEJg5D9gfQATgBAUAAQCTFLCzFkQAuBcAwBaQhnAjhmAgQjcAIjjALQlsAHlRA5g");
	this.shape_134.setTransform(101.5,733.7);

	this.shape_135 = new cjs.Shape();
	this.shape_135.graphics.f("#FFFFFF").s().p("AoIAEQAYhXAWhZIARhHQAMghAPgjIAihXIBggWQEJg5D9gfIAngBQCTFMCzFjQAuBcAwBaQhoAjhlAhQjcAIjjAKQlsAIlRA4QBXj1BFkFg");
	this.shape_135.setTransform(101.5,733.7);

	this.shape_136 = new cjs.Shape();
	this.shape_136.graphics.f().s("#333333").ss(1,1,1).p("Aq0IIQBRj6BGkHQAYhXAXhaIARhHQAMgjAMgjQAQguARgtQAvgKAxgKQEJg3EBgmQAVgCAVgCQCnFQC7FfQAxBcAyBbQhwAdhvAbQjgARjlASQlsAXlZA3g");
	this.shape_136.setTransform(95.8,749.5);

	this.shape_137 = new cjs.Shape();
	this.shape_137.graphics.f("#FFFFFF").s().p("AodAHIAuiwIAShIIAYhGIAhhbIBfgUQELg3EAgmIAqgEQCmFQC8FgIBjC2QhwAdhvAbQjgARjmASQlrAXlZA3QBRj6BGkHg");
	this.shape_137.setTransform(95.8,749.5);

	this.shape_138 = new cjs.Shape();
	this.shape_138.graphics.f().s("#333333").ss(1,1,1).p("ArEISQBMkBBGkHQAYhYAXhaIAShHQALgkALglQAPgvAOgvQAxgKAwgJQEKg1EFgtQAXgDAXgDQC5FUDEFbQA0BbA0BbQh5AYh4AXQjlAajnAaQlqAlliA2g");
	this.shape_138.setTransform(90.2,765.4);

	this.shape_139 = new cjs.Shape();
	this.shape_139.graphics.f("#FFFFFF").s().p("AoyAJIAvixIAShIIAWhIIAdheIBhgUQEKg0EFgtIAugGQC5FUDEFbIBoC2IjxAvInMA0QlqAlliA2QBMkCBGkHg");
	this.shape_139.setTransform(90.2,765.4);

	this.shape_140 = new cjs.Shape();
	this.shape_140.graphics.f().s("#333333").ss(1,1,1).p("AnXmaIKniBIIFNlI2pDSg");
	this.shape_140.setTransform(84.5,781.2);

	this.shape_141 = new cjs.Shape();
	this.shape_141.graphics.f("#FFFFFF").s().p("AnXmZIKniCIIFNlI2pDSg");
	this.shape_141.setTransform(84.5,781.2);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[]}).to({state:[{t:this.shape_1},{t:this.shape}]},8).to({state:[{t:this.shape_3},{t:this.shape_2}]},1).to({state:[{t:this.shape_5},{t:this.shape_4}]},1).to({state:[{t:this.shape_7},{t:this.shape_6}]},1).to({state:[{t:this.shape_9},{t:this.shape_8}]},1).to({state:[{t:this.shape_11},{t:this.shape_10}]},1).to({state:[{t:this.shape_13},{t:this.shape_12}]},1).to({state:[{t:this.shape_15},{t:this.shape_14}]},1).to({state:[{t:this.shape_17},{t:this.shape_16}]},1).to({state:[{t:this.shape_19},{t:this.shape_18}]},1).to({state:[{t:this.shape_21},{t:this.shape_20}]},1).to({state:[{t:this.shape_23},{t:this.shape_22}]},1).to({state:[{t:this.shape_25},{t:this.shape_24}]},1).to({state:[{t:this.shape_27},{t:this.shape_26}]},1).to({state:[{t:this.shape_29},{t:this.shape_28}]},1).to({state:[{t:this.shape_31},{t:this.shape_30}]},1).to({state:[{t:this.shape_33},{t:this.shape_32}]},1).to({state:[{t:this.shape_35},{t:this.shape_34}]},1).to({state:[{t:this.shape_37},{t:this.shape_36}]},1).to({state:[{t:this.shape_39},{t:this.shape_38}]},1).to({state:[{t:this.shape_41},{t:this.shape_40}]},1).to({state:[{t:this.shape_43},{t:this.shape_42}]},1).to({state:[{t:this.shape_45},{t:this.shape_44}]},1).to({state:[{t:this.shape_47},{t:this.shape_46}]},1).to({state:[{t:this.shape_49},{t:this.shape_48}]},1).to({state:[{t:this.shape_51},{t:this.shape_50}]},1).to({state:[{t:this.shape_53},{t:this.shape_52}]},1).to({state:[{t:this.shape_55},{t:this.shape_54}]},1).to({state:[{t:this.shape_57},{t:this.shape_56}]},1).to({state:[{t:this.shape_59},{t:this.shape_58}]},1).to({state:[{t:this.shape_61},{t:this.shape_60}]},1).to({state:[{t:this.shape_63},{t:this.shape_62}]},1).to({state:[{t:this.shape_65},{t:this.shape_64}]},1).to({state:[{t:this.shape_67},{t:this.shape_66}]},1).to({state:[{t:this.shape_69},{t:this.shape_68}]},1).to({state:[{t:this.shape_71},{t:this.shape_70}]},1).to({state:[{t:this.shape_73},{t:this.shape_72}]},1).to({state:[{t:this.shape_75},{t:this.shape_74}]},1).to({state:[{t:this.shape_77},{t:this.shape_76}]},1).to({state:[{t:this.shape_79},{t:this.shape_78}]},1).to({state:[{t:this.shape_81},{t:this.shape_80}]},1).to({state:[{t:this.shape_83},{t:this.shape_82}]},1).to({state:[{t:this.shape_85},{t:this.shape_84}]},1).to({state:[{t:this.shape_87},{t:this.shape_86}]},1).to({state:[{t:this.shape_89},{t:this.shape_88}]},1).to({state:[{t:this.shape_91},{t:this.shape_90}]},1).to({state:[{t:this.shape_93},{t:this.shape_92}]},1).to({state:[{t:this.shape_95},{t:this.shape_94}]},1).to({state:[{t:this.shape_97},{t:this.shape_96}]},1).to({state:[{t:this.shape_99},{t:this.shape_98}]},1).to({state:[{t:this.shape_101},{t:this.shape_100}]},1).to({state:[{t:this.shape_103},{t:this.shape_102}]},1).to({state:[{t:this.shape_105},{t:this.shape_104}]},1).to({state:[{t:this.shape_107},{t:this.shape_106}]},1).to({state:[{t:this.shape_109},{t:this.shape_108}]},1).to({state:[{t:this.shape_111},{t:this.shape_110}]},1).to({state:[{t:this.shape_113},{t:this.shape_112}]},1).to({state:[{t:this.shape_115},{t:this.shape_114}]},1).to({state:[{t:this.shape_117},{t:this.shape_116}]},1).to({state:[{t:this.shape_119},{t:this.shape_118}]},1).to({state:[{t:this.shape_121},{t:this.shape_120}]},1).to({state:[{t:this.shape_123},{t:this.shape_122}]},1).to({state:[{t:this.shape_125},{t:this.shape_124}]},1).to({state:[{t:this.shape_127},{t:this.shape_126}]},1).to({state:[{t:this.shape_129},{t:this.shape_128}]},1).to({state:[{t:this.shape_131},{t:this.shape_130}]},1).to({state:[{t:this.shape_133},{t:this.shape_132}]},1).to({state:[{t:this.shape_135},{t:this.shape_134}]},1).to({state:[{t:this.shape_137},{t:this.shape_136}]},1).to({state:[{t:this.shape_139},{t:this.shape_138}]},1).to({state:[{t:this.shape_141},{t:this.shape_140}]},1).to({state:[]},1).wait(47));

	// 纸
	this.shape_142 = new cjs.Shape();
	this.shape_142.graphics.f().s("#333333").ss(1,1,1).p("AoBg4INtifICWEQIttCfg");
	this.shape_142.setTransform(76.4,459.9);

	this.shape_143 = new cjs.Shape();
	this.shape_143.graphics.f("#FFFFFF").s().p("AoBg4INtifICWEQIttCfg");
	this.shape_143.setTransform(76.4,459.9);

	this.shape_144 = new cjs.Shape();
	this.shape_144.graphics.f().s("#333333").ss(1,1,1).p("AoEhhIIVhuIBEAAQBTABBRABQBDACBBABQBICNA5CFQAEAIADAIQinANi5AfQhmARhkAVQhXAShTATQhLAFhZgLQgWgwgXgyQgihGgjhFg");
	this.shape_144.setTransform(85.4,427.2);

	this.shape_145 = new cjs.Shape();
	this.shape_145.graphics.f("#FFFFFF").s().p("AlzDJIgthiIhFiLIgfg9IIVhuIBEAAICkACICEADQBICNA5CFIAHAQQinANi5AfQhmARhkAVQhXAShTATQgYABgYAAQg3AAg9gHg");
	this.shape_145.setTransform(85.4,427.2);

	this.shape_146 = new cjs.Shape();
	this.shape_146.graphics.f().s("#333333").ss(1,1,1).p("AoHh5II2iBIBDANQBSARBNASQBBAQA+AOQBKCcAtCNQABAFAAAGQiogEjPAgQhsAShrAYQhfAVhVAYQgzgJhOgoQgTgzgWg4QgghLgkhMg");
	this.shape_146.setTransform(94.3,392.9);

	this.shape_147 = new cjs.Shape();
	this.shape_147.graphics.f("#FFFFFF").s().p("Al7DKQgTgzgWg4QgghLgkhMIgfhBII2iBIBDANQBRARBOASIB+AeQBLCcAtCNIABALQiogEjPAgQhtAShqAYQhfAVhVAYQgzgJhOgog");
	this.shape_147.setTransform(94.3,392.9);

	this.shape_148 = new cjs.Shape();
	this.shape_148.graphics.f().s("#333333").ss(1,1,1).p("AoMiSIJViTIBDAZQBQAhBLAiQA/AfA5AcQBNCpAhCWQgCADgCADQirgVjkAiQhzARhxAcQhmAYhXAdQgbgWhDhFQgRg3gWg9QgdhQgkhSg");
	this.shape_148.setTransform(103.5,358.6);

	this.shape_149 = new cjs.Shape();
	this.shape_149.graphics.f("#FFFFFF").s().p("AmFDLQgRg3gWg9QgdhQgkhSIgfhHIJViTIBDAZQBQAhBLAiIB4A7QBNCpAhCWIgEAGQirgVjkAiQhzARhxAcQhmAYhXAdQgbgWhDhFg");
	this.shape_149.setTransform(103.5,358.6);

	this.shape_150 = new cjs.Shape();
	this.shape_150.graphics.f().s("#333333").ss(1,1,1).p("AoSiqIJ2imIBCAnQBPAwBIAyQA9AuA0ApQBQC4AVCeQgEAAgGABQitgmj4AjQh4ASh6AeQhtAdhaAgQgDgjg4hhQgOg7gVhCQgbhUgkhbg");
	this.shape_150.setTransform(112.7,324.3);

	this.shape_151 = new cjs.Shape();
	this.shape_151.graphics.f("#FFFFFF").s().p("AmQDNQgOg7gVhCQgbhUgkhbIgghLIJ2imIBCAnQBPAwBIAzQA9AtA0ApQBQC4AVCeIgKAAQitglj4AjQh4ARh6AgQhtAbhaAhQgDgjg4hhg");
	this.shape_151.setTransform(112.7,324.3);

	this.shape_152 = new cjs.Shape();
	this.shape_152.graphics.f().s("#333333").ss(1,1,1).p("AoYjDIKVi4IBCAzQBPBABEBDQA7A8AwA3QBTDGAJCmQgHgCgJgCQivg3kOAlQh+ASiBAiQh0AfhcAlQAVgxgth9QgMg/gThHQgahZgkhhg");
	this.shape_152.setTransform(121.9,290);

	this.shape_153 = new cjs.Shape();
	this.shape_153.graphics.f("#FFFFFF").s().p("AmbDOQgMg/gThHQgahagkhgIgghRIKVi4IBCAzQBOBABFBEQA7A7AwA2QBTDHAJCmIgQgEQivg3kOAlQh+ARiBAjQhzAfhdAlQAVgwgth+g");
	this.shape_153.setTransform(121.9,290);

	this.shape_154 = new cjs.Shape();
	this.shape_154.graphics.f().s("#333333").ss(1,1,1).p("AoejbIK2jMIBABAQBOBRBBBUQA5BJAsBEQBWDWgDCtQgKgFgLgEQiyhHkjAmQiFARiHAmQh7AjhfAqQAtg+giibQgJhDgShMQgZhfgkhng");
	this.shape_154.setTransform(131.1,255.7);

	this.shape_155 = new cjs.Shape();
	this.shape_155.graphics.f("#FFFFFF").s().p("AmmDPQgJhCgShNQgZhfgkhoIgghUIK2jMIBABBQBOBQBBBUQA5BJAsBEQBWDWgDCuIgVgKQiyhIkjAnQiFARiHAmQh7AihfArQAtg/giiag");
	this.shape_155.setTransform(131.1,255.7);

	this.shape_156 = new cjs.Shape();
	this.shape_156.graphics.f().s("#333333").ss(1,1,1).p("Aolj1ILWjdIBABNQBMBgA/BkQA3BYAnBSQBZDkgPC2QgNgHgOgIQi0hZk4AoQiLASiOApQiCAmhhAuQBFhLgYi4QgGhFgShSQgWhkgkhug");
	this.shape_156.setTransform(140.4,221.4);

	this.shape_157 = new cjs.Shape();
	this.shape_157.graphics.f("#FFFFFF").s().p("AmyDQQgGhGgShSQgWhkgkhuIghhbILWjcIBABMQBMBhA/BjQA3BZAnBRQBZDlgPC1IgbgOQi0hak4AoQiLASiOApQiCAmhhAuQBFhLgYi3g");
	this.shape_157.setTransform(140.4,221.4);

	this.shape_158 = new cjs.Shape();
	this.shape_158.graphics.f().s("#333333").ss(1,1,1).p("AotkNIL3jwIA/BaQBLBwA7B0QC+FwglEHQi4iBlsAsQiSASiUAtQiKAphjAzQB9h3hBlXQgUhpglh1g");
	this.shape_158.setTransform(149.8,187);

	this.shape_159 = new cjs.Shape();
	this.shape_159.graphics.f("#FFFFFF").s().p("AnTAwQgUhpglh1IghhfIL3jwIA/BaQBLBwA7B0QC+FwglEHQi4iBlsAsQiSASiUAtQiKAphjAzQB9h3hBlXg");
	this.shape_159.setTransform(149.8,187);

	this.shape_160 = new cjs.Shape();
	this.shape_160.graphics.f().s("#333333").ss(1,1,1).p("Aohj4QFahxFSh5QAagJAbgJQAeAqAfAqQAzBLAsBNQARAfARAfQARAiAPAgQCbE8gaDnQgegVgjgQQiqhKkiApQiMAViOAvQgdAKgbAKQhkAghOAoQBzhyhElKQgWhlgmhxQgRgtgRgtg");
	this.shape_160.setTransform(156.1,189.9);

	this.shape_161 = new cjs.Shape();
	this.shape_161.graphics.f("#FFFFFF").s().p("AnDA5QgWhlgmhxIgihaIAAgBQFahxFSh5IA1gSIA9BUQAzBMAsBNIAiA9IAgBDQCbE6gaDpQgegWgjgQQiqhKkiApQiMAWiOAuIg4AUQhkAghOAoQBzhyhElKg");
	this.shape_161.setTransform(156.1,189.9);

	this.shape_162 = new cjs.Shape();
	this.shape_162.graphics.f().s("#333333").ss(1,1,1).p("AoXjjQFUhyFFiEQAagJAagKQAdAoAdAnQAxBHAqBJQARAdAQAcQAQAgAPAfQCdEygSDjQgcgUgigQQiihBkWAtQiGAYiJAxQgcAKgZAKQhkAhhNAnQBphshHk/QgZhignhrQgSgsgSgrg");
	this.shape_162.setTransform(162.4,192.8);

	this.shape_163 = new cjs.Shape();
	this.shape_163.graphics.f("#FFFFFF").s().p("AmzBCQgZhignhrIgkhXIAAgBQFUhyFFiEIA0gSIA6BOQAxBHAqBJIAhA5IAfA/QCdEygSDjQgcgVgigPQiihCkWAuQiGAYiJAxIg1AUQhkAhhNAmQBphshHk+g");
	this.shape_163.setTransform(162.4,192.8);

	this.shape_164 = new cjs.Shape();
	this.shape_164.graphics.f().s("#333333").ss(1,1,1).p("AoMjPQFNhzE5iNQAZgKAYgKQAcAlAcAkQAwBCAoBEQAQAbAOAbQAQAdAOAdQCfEqgKDeQgagUgfgOQibg6kKAyQiBAbiDAzQgaALgZAKQhiAhhNAmQBfhnhKkyQgchdgohoQgTgqgSgqg");
	this.shape_164.setTransform(168.7,195.6);

	this.shape_165 = new cjs.Shape();
	this.shape_165.graphics.f("#FFFFFF").s().p("AmjBLQgchdgohoIglhUIAAgBQFNhzE5iNIAxgUIA4BJQAwBCAoBEIAeA2QAQAdAOAdQCfEqgKDeQgagUgfgOQibg6kKAyQiBAbiDAzIgzAVQhiAhhNAmQBfhnhKkyg");
	this.shape_165.setTransform(168.7,195.6);

	this.shape_166 = new cjs.Shape();
	this.shape_166.graphics.f().s("#333333").ss(1,1,1).p("AoCi6QFGh0EtiYQAYgKAYgKQAbAiAaAhQAuA+AmA+QAPAZAOAZQAPAcANAaQChEigBDZQgYgTgdgOQiUgxj/A3Qh7Aeh9A1QgZALgXALQhiAghNAlQBVhhhNkmQgehZgqhkQgTgogTgog");
	this.shape_166.setTransform(175,198.5);

	this.shape_167 = new cjs.Shape();
	this.shape_167.graphics.f("#FFFFFF").s().p("AmUBUQgehZgqhkIgmhQIAAgBQFGh0EtiYIAwgUIA1BDQAuA+AmA+IAdAzQAPAbANAaQChEjgBDYQgYgTgdgOQiUgxj/A3Qh7Aeh9A1QgZALgXALQhiAghNAlQBVhhhNkmg");
	this.shape_167.setTransform(175,198.5);

	this.shape_168 = new cjs.Shape();
	this.shape_168.graphics.f().s("#333333").ss(1,1,1).p("An4ilQFAh2EgihQAXgLAXgKQAZAfAaAeQAsA5AjA5QAPAYANAXQAOAZANAYQCkEbAGDTQgXgSgbgNQiMgpjzA7Qh1Ahh3A3QgYALgXAMQhhAghMAkQBLhbhQkbQghhXgqhdQgUgmgUgmg");
	this.shape_168.setTransform(181.4,201.4);

	this.shape_169 = new cjs.Shape();
	this.shape_169.graphics.f("#FFFFFF").s().p("AmGBcQgfhXgrhdIgohMIAAgBQE/h2EhihIAtgVIA0A9QAsA5AjA5IAcAvIAbAxQCjEbAHDTQgXgSgbgNQiLgpj0A7Qh1Ahh3A3QgYALgXAMQhgAghNAkQBLhbhRkbg");
	this.shape_169.setTransform(181.4,201.4);

	this.shape_170 = new cjs.Shape();
	this.shape_170.graphics.f().s("#333333").ss(1,1,1).p("AnuiQQE5h3EUirQAWgLAWgMQAYAdAZAcQApA0AiA0QAOAVAMAWQANAXAMAWQCmETAPDNQgVgRgYgMQiFghjoBAQhvAkhxA5QgXAMgWAMQhgAfhMAkQBAhXhSkOQgjhTgshYQgVglgUgkg");
	this.shape_170.setTransform(187.8,204.2);

	this.shape_171 = new cjs.Shape();
	this.shape_171.graphics.f("#FFFFFF").s().p("Al2BlQgjhTgshYIgphJIAAgBQE5h3EUirIAsgXIAxA5QApA0AiA0QAOAVAMAWIAZAtQCmETAPDNQgVgRgYgMQiFghjoBAQhvAkhxA5IgtAYQhgAfhMAkQBAhXhSkOg");
	this.shape_171.setTransform(187.8,204.2);

	this.shape_172 = new cjs.Shape();
	this.shape_172.graphics.f().s("#333333").ss(1,1,1).p("Ankh8QEyh4EIi1QAUgMAVgLQAYAaAXAZQAoAvAfAvQAOAUALATQANAVALAUQCoELAXDIQgTgQgWgLQh9gZjeBEQhpAnhrA7QgWAMgUANQhfAehMAkQA2hRhVkCQglhPguhVQgVgigVgjg");
	this.shape_172.setTransform(194.2,207.1);

	this.shape_173 = new cjs.Shape();
	this.shape_173.graphics.f("#FFFFFF").s().p("AloBuQgkhPguhVIgqhFIAAgBQEyh4EIi0IApgYIAvAzQAnAvAhAvIAYAnQANAVALAUQCoELAWDIQgSgQgWgLQh+gZjdBEQhoAnhsA7IgpAZQhgAehMAkQA2hRhWkCg");
	this.shape_173.setTransform(194.2,207.1);

	this.shape_174 = new cjs.Shape();
	this.shape_174.graphics.f().s("#333333").ss(1,1,1).p("AnahnQEsh5D7i/QAUgNAUgLQAWAWAWAXQAlAqAeArQAMARALASQAMATAKARQCrEDAfDCQgRgOgUgLQh2gQjRBIQhmAqhjA+QgVAMgTANQheAehMAjQAshLhZj2QgmhLgwhRQgWgggVgig");
	this.shape_174.setTransform(200.5,210);

	this.shape_175 = new cjs.Shape();
	this.shape_175.graphics.f("#FFFFFF").s().p("AlZB3QgmhLgwhRIgrhBIAAgBQEsh6D7i+IAogZIAsAuQAlAqAeArIAXAjIAWAlQCrECAfDCQgRgOgUgKQh2gSjRBJQhmAqhjA9IgoAaQheAfhMAiQAshLhZj2g");
	this.shape_175.setTransform(200.5,210);

	this.shape_176 = new cjs.Shape();
	this.shape_176.graphics.f().s("#333333").ss(1,1,1).p("AnQhTQElh6DujJQATgMATgNQAVAUAVAUQAjAlAdAmQALAPAKAQQAMARAJAQQCtD8AnC7QgPgNgSgKQhugIjGBMQhgAtheBAQgTANgSANQheAehMAjQAjhHhbjqQgqhGgxhMQgWgfgWggg");
	this.shape_176.setTransform(206.9,212.9);

	this.shape_177 = new cjs.Shape();
	this.shape_177.graphics.f("#FFFFFF").s().p("AlKB/QgphGgxhMIgsg+IAAgBQElh6DujJIAngaIApAoQAkAlAcAmIAWAfIAUAiQCtD7AnC8QgPgOgSgKQhugIjGBNQhgAsheBBIglAaQheAdhMAjQAjhHhcjqg");
	this.shape_177.setTransform(206.9,212.9);

	this.shape_178 = new cjs.Shape();
	this.shape_178.graphics.f().s("#333333").ss(1,1,1).p("AnGg+QEeh7DijTQASgNASgNQAVARATARQAhAhAbAhQAKANAKAOQAKAOAJAPQCvD0AvC2QgNgNgQgJQhnAAi7BRQhZAwhYBCQgSANgRAOQhdAdhLAiQAYhBhfjeQgrhCgzhIQgWgdgXgeg");
	this.shape_178.setTransform(213.3,215.7);

	this.shape_179 = new cjs.Shape();
	this.shape_179.graphics.f("#FFFFFF").s().p("Ak7CIQgrhCgzhIIgtg7IAAgBQEeh7DijTIAkgaIAoAiQAhAhAbAhIAUAbIATAdQCvD0AvC2QgNgNgQgJQhnAAi7BRQhZAwhYBCIgjAbQhdAdhLAiQAYhBhfjeg");
	this.shape_179.setTransform(213.3,215.7);

	this.shape_180 = new cjs.Shape();
	this.shape_180.graphics.f().s("#333333").ss(1,1,1).p("Am7gpQEXh9DVjdQASgNARgOQATAPASAOQAfAcAZAcQAJALAJAMQAJANAJAMQCxDsA3CwQgLgLgOgIQhfAHiwBWQhTAzhSBEQgRAOgQAOQhcAdhLAiQAOg8hijTQgtg+g0hFQgYgagWgcg");
	this.shape_180.setTransform(219.7,218.6);

	this.shape_181 = new cjs.Shape();
	this.shape_181.graphics.f("#FFFFFF").s().p("AksCQIhiiDIgug2IAAAAQEYh9DVjcIAjgbIAlAcQAfAcAYAcIATAXIARAZQCxDsA3CxQgKgMgOgIQhfAHiwBXQhUAyhRBEIghAcQhcAehMAhQAOg8hhjTg");
	this.shape_181.setTransform(219.7,218.6);

	this.shape_182 = new cjs.Shape();
	this.shape_182.graphics.f().s("#333333").ss(1,1,1).p("AmygUQERh+DJjnQAQgOAQgOQASAMARALQAeAYAWAWQAJAKAIAKQAJAKAHAKQC0DkA/CsQgJgLgMgHQhXAPilBbQhOA2hOBGQgNAOgPAPQhbAchLAhQADg2hkjHQgwg6g1hBQgYgagYgYg");
	this.shape_182.setTransform(226,221.5);

	this.shape_183 = new cjs.Shape();
	this.shape_183.graphics.f("#FFFFFF").s().p("AkdCZIhlh7IgwgyIAAAAQERh+DJjnIAggcIAjAXQAeAYAWAWIARAUIAQAUQC0DkA/CsQgJgLgMgHQhXAPilBbQhOA2hOBGIgcAdQhbAchLAhQADg2hkjHg");
	this.shape_183.setTransform(226,221.5);

	this.shape_184 = new cjs.Shape();
	this.shape_184.graphics.f().s("#333333").ss(1,1,1).p("AmnAAQEJh/C9jwQAPgPAQgOQAQAJAQAJQAbASAVASQAIAIAHAHQAIAJAHAIQC2DcBHCmQgHgKgKgGQhQAYiZBeQhIA5hIBIQgOAPgOAPQhYAchLAgQgHgwhni7Qgyg2g3g8QgYgYgYgYg");
	this.shape_184.setTransform(232.4,224.3);

	this.shape_185 = new cjs.Shape();
	this.shape_185.graphics.f("#FFFFFF").s().p("AkOCiIhphyIgxgwIAAAAQEKh/C9jwIAegdIAhASQAbASAUASIAQAPIAOARQC3DcBGCmQgGgKgKgGQhQAYiZBeQhIA5hIBIIgcAeQhZAchLAgQgGgwhni7g");
	this.shape_185.setTransform(232.4,224.3);

	this.shape_186 = new cjs.Shape();
	this.shape_186.graphics.f().s("#333333").ss(1,1,1).p("AmeATQEDh+Cxj7QAOgPAOgPQAQAHAPAGQAZANASANQAIAGAGAGQAHAGAGAGQC4DUBQCgQgFgIgIgGQhIAgiOBjQhCA8hCBLQgOAPgMAPQhYAchLAgQgQgshqiuQg1gyg4g4QgZgXgZgWg");
	this.shape_186.setTransform(238.8,227.2);

	this.shape_187 = new cjs.Shape();
	this.shape_187.graphics.f("#FFFFFF").s().p("Aj/CrQg1gyg4g4IgygtIAAgBQEDh+Cxj7IAcgeIAfANQAZAOASANIAOALIANAMQC4DUBQChQgFgJgIgGQhIAgiOBkQhCA8hCBKIgaAeQhYAchLAgQgQgshqiug");
	this.shape_187.setTransform(238.8,227.2);

	this.shape_188 = new cjs.Shape();
	this.shape_188.graphics.f().s("#333333").ss(1,1,1).p("AGPAKQgBgCgCgBQhBAoiCBoQg8A/g8BMQgNAQgLAQQhXAbhKAfQgbgmhtiiQg3gug5g0QgagVgZgVIAAAAQD8iACkkEQANgQAOgPQAOAEANADQAYAJAQAIQAHAEAGADQAGAFAFAEQC1DFBXCYQADAFADAF");
	this.shape_188.setTransform(245.2,230.1);

	this.shape_189 = new cjs.Shape();
	this.shape_189.graphics.f("#FFFFFF").s().p("AjuC0Qg3gug5g0IgzgqIAAAAQD8iACkkEIAbgfIAcAHQAXAJARAIIAMAHIAMAJQC1DFBXCYIgDgDQhBAoiCBoQg9A/g8BMIgXAgQhXAbhLAfQgagmhuiig");
	this.shape_189.setTransform(244.9,230.1);

	this.shape_190 = new cjs.Shape();
	this.shape_190.graphics.f().s("#333333").ss(1,1,1).p("AGEgQQg5Avh2BqQg1BCg3BPQgLAQgKAQQhXAbhKAeQglgghwiXQg5gpg7gwQgagTgagTIAAgBQD1iACYkPQANgQAMgPQANABAMAAQAWAEAPADQAFACAFACQAGACAEACQC3C+BfCUQAEAFADAEQgCgGgDgEQgBABgBAAg");
	this.shape_190.setTransform(251.6,233);

	this.shape_191 = new cjs.Shape();
	this.shape_191.graphics.f("#FFFFFF").s().p("AjhC8Qg6gpg6gwIg1gmIAAgBQD1iACYkPIAZgfIAZABIAkAHIALAEIAKAFQC3C9BfCUQg5Avh1BrQg3BBg2BPIgVAgQhXAchKAdQglgghviXgAGEgQIACgBQADAEACAGIgHgJgAGEgQIAAAAg");
	this.shape_191.setTransform(251.6,233);

	this.shape_192 = new cjs.Shape();
	this.shape_192.graphics.f().s("#333333").ss(1,1,1).p("AF9gkQABADACACQABgGgBgDQgBACgCACQgzA3hoBsQgwBFgxBRQgJARgJAQQhYAbhIAdQgvgbhziKQg7gmg8grQgcgRgagSIAAAAQDviCCNkZQAKgQALgQQAMgCALgCQATgBANgCQAFAAAEAAQAFAAAEAAQC8C5BnCQg");
	this.shape_192.setTransform(257.9,235.5);

	this.shape_193 = new cjs.Shape();
	this.shape_193.graphics.f("#FFFFFF").s().p("AjTDJQg7gmg8grIg2giIAAgBQDviCCNkYIAVghIAXgEQATgBANgCIAJAAIAJAAQC8C5BnCQQgzA3hoBsQgwBFgxBRIgSAhQhYAbhIAdQgvgbhziKgAF9gkIADgEQABAEgBAFIgDgFgAF9gkIAAAAg");
	this.shape_193.setTransform(257.9,235.5);

	this.shape_194 = new cjs.Shape();
	this.shape_194.graphics.f().s("#333333").ss(1,1,1).p("AF0gwQAAAAAAABQAEgFAAgDQgCAEgCADQgrA+hbBvQgrBIgrBTQgIARgIARQhXAahIAdQg5gWh2h+Qg+ghg9gnQgcgQgagPIAAgBQDniDCBkjQALgQAIgRQALgEAKgGQARgFALgHQAEgCAEgCQAEgCADgCQDBCzBvCNg");
	this.shape_194.setTransform(264.5,237.2);

	this.shape_195 = new cjs.Shape();
	this.shape_195.graphics.f("#FFFFFF").s().p("AjGDdQg+ghg9gnIg2gfIAAgBQDniDCBkjIATghIAVgKQARgFALgHIAIgEIAHgEQDBCzBvCNQgrA+hbBvQgrBIgrBTIgQAiQhXAahIAdQg5gWh2h+gAF0gwIAEgHIgEAIIAAgBgAF0gwIAAAAg");
	this.shape_195.setTransform(264.5,237.2);

	this.shape_196 = new cjs.Shape();
	this.shape_196.graphics.f().s("#333333").ss(1,1,1).p("AlwCVQDhiGB1kqQAKgRAJgRQAIgIAJgIQAPgKAJgMQADgEADgEQADgDACgFQDECsB3CHQAFgDADgCQgjBHhVB5QgkBLglBVQgHARgHASQhWAahKAcQhBgQh5hyQhAgdg/gkQgdgNgbgOg");
	this.shape_196.setTransform(271.1,238.9);

	this.shape_197 = new cjs.Shape();
	this.shape_197.graphics.f("#FFFFFF").s().p("Ai5DyQhAgdg+gkIg4gbIAAgBQDgiGB1kqIATgiIARgQQAPgKAJgMIAGgIIAGgIQDDCsB4CHIAIgFQgjBHhWB5QgkBLglBVIgOAjQhWAahKAcQhBgQh5hyg");
	this.shape_197.setTransform(271.1,238.9);

	this.shape_198 = new cjs.Shape();
	this.shape_198.graphics.f().s("#333333").ss(1,1,1).p("AlnC1QDaiHBok1QAIgRAJgSQAJgKAHgKQALgPAIgRQACgGACgGQACgGACgGQDGCjB/CDQAIgDAFgBQgcBRhKB8QgeBOgfBXQgHASgFASQhWAZhJAcQhLgLh8hmQhCgZhAgfQgegLgbgNg");
	this.shape_198.setTransform(277.7,240.6);

	this.shape_199 = new cjs.Shape();
	this.shape_199.graphics.f("#FFFFFF").s().p("AisEGQhDgZhAgfQgdgMgbgMIAAAAQDZiIBpk1IARgjIAQgUQALgPAIgRIAEgMIAEgLQDGCiB/CDIAMgEQgbBRhKB8QgfBOgfBXIgLAkQhWAahJAbQhLgLh8hmg");
	this.shape_199.setTransform(277.7,240.6);

	this.shape_200 = new cjs.Shape();
	this.shape_200.graphics.f().s("#333333").ss(1,1,1).p("AlfDWQDTiJBck+QAIgSAHgSQAIgNAGgOQALgTAFgWQACgIABgIQAAgIABgIQDICbCHB9QAKgCAHAAQgUBag+CAQgZBRgaBaQgFASgEASQhVAZhJAbQhVgFh/haQhFgWhBgaQgegKgcgKg");
	this.shape_200.setTransform(284.2,242.3);

	this.shape_201 = new cjs.Shape();
	this.shape_201.graphics.f("#FFFFFF").s().p("AifEbQhFgWhBgaIg6gVIAAAAQDTiJBck+IAPgkQAIgNAGgOQALgTAFgWIADgQIABgQQDICcCHB8QAJgCAIAAQgVBag9CAQgZBRgaBZIgJAlQhVAZhJAaQhVgFh/hZg");
	this.shape_201.setTransform(284.2,242.3);

	this.shape_202 = new cjs.Shape();
	this.shape_202.graphics.f().s("#333333").ss(1,1,1).p("AlYD2QDNiKBPlIQAHgSAHgTQAGgPAFgRQAKgYACgbQABgKABgKQABgJAAgLQDICTCQB4QALgBAKABQgNBhgzCFQgTBUgTBbQgFATgDATQhUAZhJAZQhfABiChOQhHgRhCgWQgfgJgdgIg");
	this.shape_202.setTransform(290.8,244);

	this.shape_203 = new cjs.Shape();
	this.shape_203.graphics.f("#FFFFFF").s().p("AiSEvQhIgRhCgWIg7gRIAAAAQDMiLBPlIIAOglIALggQAKgYACgbIACgUIABgTQDICSCQB4IAUAAQgMBhgzCFIgnCwIgHAlQhUAZhIAZIgCAAQheABiBhOg");
	this.shape_203.setTransform(290.8,244);

	this.shape_204 = new cjs.Shape();
	this.shape_204.graphics.f().s("#333333").ss(1,1,1).p("AlQEXQDGiMBDlSQAGgTAGgSQAFgTAEgTQAHgdABggQAAgLAAgMQAAgMAAgNQDKCLCYBzQANAAALABQgFBqgnCJQgNBXgOBdQgCATgDAUQhTAYhIAZQhqAGiFhCQhJgNhEgSQgfgGgegHg");
	this.shape_204.setTransform(297.4,245.7);

	this.shape_205 = new cjs.Shape();
	this.shape_205.graphics.f("#FFFFFF").s().p("AiFFDQhKgNhEgSIg9gNQDHiMBDlSIALglQAFgTAEgTQAHgdABggIAAgXIAAgZQDKCLCZBzQANAAAKABQgEBqgoCJIgbC0IgEAnQhUAYhIAZIgSABQhjAAh5g9g");
	this.shape_205.setTransform(297.4,245.7);

	this.shape_206 = new cjs.Shape();
	this.shape_206.graphics.f().s("#333333").ss(1,1,1).p("AlIE2QDAiMA2ldQAFgTAFgTQAEgVACgWQAFgiAAglQgBgNgBgOQgBgOgBgOQDNCCCgBtQAPABANADQADBygcCNQgIBagHBgQgCATgBAUQhSAYhJAZQh1ALiGg2QhLgJhGgOQgggEgegGg");
	this.shape_206.setTransform(304,247.5);

	this.shape_207 = new cjs.Shape();
	this.shape_207.graphics.f("#FFFFFF").s().p("Ah5FXQhLgJhGgOIg+gKQDAiMA2ldIAKgmQAEgVACgWQAFgiAAglIgCgbIgCgcQDNCCCgBtQAPABANADQADBygcCNIgPC6IgDAnQhSAYhJAZQgTABgVAAQhiAAhxgsg");
	this.shape_207.setTransform(304,247.5);

	this.shape_208 = new cjs.Shape();
	this.shape_208.graphics.f().s("#333333").ss(1,1,1).p("AlCFVQC5iOAqlmQAEgTAEgUQADgYABgZQADgngCgpQgCgQgBgPQgCgQgCgRQDPB7CoBnQARADAQADQAKB6gRCSQgCBcgBBiQgBAUAAAUQhRAYhJAYQh/ARiJgrQhOgEhHgJQgggDgfgEg");
	this.shape_208.setTransform(310.7,249.4);

	this.shape_209 = new cjs.Shape();
	this.shape_209.graphics.f("#FFFFFF").s().p("AhuFpQhOgEhHgJIg/gHIAAAAQC5iOAqlmIAIgnQADgYABgZQADgngCgpIgDgfIgEghQDPB7CoBnIAhAGQAKB6gRCSIgDC+IgBAoQhRAYhJAYQgjAFglAAQhbAAhlgfg");
	this.shape_209.setTransform(310.7,249.4);

	this.shape_210 = new cjs.Shape();
	this.shape_210.graphics.f().s("#333333").ss(1,1,1).p("AlDFzQCyiPAelwQADgUACgUQACgbABgbQAAgsgEguQgDgSgCgSQgCgSgDgSQDRByCxBjQASADASAEQARCCgFCWQAFBgADBkQACAUABAVQhRAXhIAYQiKAWiMgfQhQAAhIgFQghgBgfgCg");
	this.shape_210.setTransform(318.3,251.3);

	this.shape_211 = new cjs.Shape();
	this.shape_211.graphics.f("#FFFFFF").s().p("AhrF7QhQAAhIgFIhAgDIAAAAQCyiPAdlwIAGgoQACgbABgbQAAgsgEguIgFgkIgFgkQDSByCwBjIAkAHQARCCgFCWIAJDEIACApQhRAXhIAYQg6AJg6AAQhPAAhTgSg");
	this.shape_211.setTransform(318.3,251.3);

	this.shape_212 = new cjs.Shape();
	this.shape_212.graphics.f().s("#333333").ss(1,1,1).p("AlMGQQCsiQARl6QACgVACgVQAAgdAAgeQgBgxgHgzQgCgTgEgUQgDgUgDgUQDTBqC4BdQAVAEAUAFQAZCKAGCbQAKBiAKBnQACAVADAUQhQAXhIAXQiUAbiOgSQhTAEhKgBQghABghAAg");
	this.shape_212.setTransform(326.5,253.4);

	this.shape_213 = new cjs.Shape();
	this.shape_213.graphics.f("#FFFFFF").s().p("AhtGMQhTAEhKgBIhCABQCsiQARl6IAEgqIAAg7QgCgxgFgzIgHgnIgHgoIGNDHIAoAJQAZCKAFCbIAVDJIAEApQhPAXhJAXQhYAQhXAAQg5AAg5gHg");
	this.shape_213.setTransform(326.5,253.4);

	this.shape_214 = new cjs.Shape();
	this.shape_214.graphics.f().s("#333333").ss(1,1,1).p("AlUGjQCliRAEmEQACgVAAgVQAAgggCghQgDg1gIg5QgEgVgEgWQgEgWgEgWQDWBiDABYQAXAFAWAFQAgCTARCfQAQBmAQBoQADAVAEAWQhPAWhIAWQieAhiRgGQhVAIhLADQgjADggABg");
	this.shape_214.setTransform(334.7,256.4);

	this.shape_215 = new cjs.Shape();
	this.shape_215.graphics.f("#FFFFFF").s().p("AirhyIACgqIgChBQgDg1gIg5IgIgrIgIgsIGWC6IAtAKQAgCTARCfIAgDOIAHArQhPAWhIAWQieAhiRgGQhVAIhLADIhDAEQCliRAEmEg");
	this.shape_215.setTransform(334.7,256.4);

	this.shape_216 = new cjs.Shape();
	this.shape_216.graphics.f().s("#333333").ss(1,1,1).p("AldG1QCfiTgJmOQABgVAAgWQgBgjgEgjQgFg6gLg+QgEgXgEgXQgFgZgFgYQDaBaDHBSQAYAGAYAHQAoCaAdClQAWBoAWBqQAEAWAFAWQhPAWhHAVQioAmiVAHQhXALhMAJQgjADgiAEg");
	this.shape_216.setTransform(342.9,259.6);

	this.shape_217 = new cjs.Shape();
	this.shape_217.graphics.f("#FFFFFF").s().p("AjGhrIAAgsQgCgjgDgjQgFg6gKg9IgJgvIgKgxIGgCsIAxANQAoCbAdCjIAsDUIAJArIiXAsQioAliUAGQhXAMhMAJIhFAHQCeiTgHmNg");
	this.shape_217.setTransform(342.9,259.6);

	this.shape_218 = new cjs.Shape();
	this.shape_218.graphics.f().s("#333333").ss(1,1,1).p("AllHGQCXiTgUmYQgBgWgBgWQgCglgFgnQgHg/gMhCQgGgZgFgaQgFgagGgbQDcBTDPBMQAaAHAbAIQAvCiAoCpQAcBrAbBtQAGAWAGAWQhOAWhHAVQiyAriYASQhZARhOAMQgjAFgiAGg");
	this.shape_218.setTransform(351.1,262.7);

	this.shape_219 = new cjs.Shape();
	this.shape_219.graphics.f("#FFFFFF").s().p("AllHGQCXiTgUmYIgCgsQgCglgFgnQgHg/gMhCIgLgzIgLg1IGrCfIA1APQAvCiAoCpIA3DYIAMAsIiVArQiyAriYASQhZARhOAMIhFALg");
	this.shape_219.setTransform(351.1,262.7);

	this.shape_220 = new cjs.Shape();
	this.shape_220.graphics.f().s("#333333").ss(1,1,1).p("AluHYQCRiUghmiQgBgXgCgWQgEgogGgqQgJhDgOhHQgGgbgHgcQgGgcgGgdQDfBKDWBIQAdAIAcAIQA3CrAzCsQAiBvAhBvQAIAWAGAXQhMAVhIAUQi8AxiaAeQhcAVhPAQQglAIgiAGg");
	this.shape_220.setTransform(359.4,265.9);

	this.shape_221 = new cjs.Shape();
	this.shape_221.graphics.f("#FFFFFF").s().p("Aj+heIgDgtQgEgpgGgpQgJhDgOhIIgNg2IgMg5IG1CRIA5ARQA3CrA0CsIBCDeIAPAtIiVApQi7AxibAeQhcAUhPAQIhHAPQCRiVghmhg");
	this.shape_221.setTransform(359.4,265.9);

	this.shape_222 = new cjs.Shape();
	this.shape_222.graphics.f().s("#333333").ss(1,1,1).p("AlinpIH9CWIDcJ1QnUCCkZBGQCKiWgtmsQgOiHgfiSg");
	this.shape_222.setTransform(367.6,269.1);

	this.shape_223 = new cjs.Shape();
	this.shape_223.graphics.f("#FFFFFF").s().p("AkZhYQgOiHgfiSIgch4IH9CWIDcJ1QnUCCkZBGQCKiWgtmsg");
	this.shape_223.setTransform(367.6,269.1);

	this.shape_224 = new cjs.Shape();
	this.shape_224.graphics.f().s("#333333").ss(1,1,1).p("AlrHTQCSiUgdmgQgCgWgBgWQgMhogWhwIgZhtIGeCMQAnALAnAMQAkB2AjB2QA0C1A5C7QhJAVhDAUQj7A5jAAnQg6AMgzALQgSADgRADg");
	this.shape_224.setTransform(362.5,276.4);

	this.shape_225 = new cjs.Shape();
	this.shape_225.graphics.f("#FFFFFF").s().p("Aj2hhIgDgsQgMhogWhwIgZhtIGeCMIBOAXIBHDsQA0C1A5C7QhJAVhDAUQj7A5jAAnIhtAXIgjAGQCSiUgdmgg");
	this.shape_225.setTransform(362.5,276.4);

	this.shape_226 = new cjs.Shape();
	this.shape_226.graphics.f().s("#333333").ss(1,1,1).p("AlgG9QCaiTgOmUQAAgVgBgWQgIhdgUhnIgWhjIGVCcQAjAKAkALQAcBvAbByQAlCsAwC2QhKAWhDAWQjsAoi7AcQg4AIgzAIQgRADgRACg");
	this.shape_226.setTransform(357.5,283.7);

	this.shape_227 = new cjs.Shape();
	this.shape_227.graphics.f("#FFFFFF").s().p("AjUhqIgBgrQgIhdgUhnIgWhjIGVCcIBHAVQAcBvAbByQAlCsAwC2QhKAWhDAWQjsAoi7AcIhrAQIgiAFQCaiTgOmUg");
	this.shape_227.setTransform(357.5,283.7);

	this.shape_228 = new cjs.Shape();
	this.shape_228.graphics.f().s("#333333").ss(1,1,1).p("AlVGmQCjiRABmHQABgVABgVQgHhUgQhcIgThZIGMCrQAgAJAfAJQAVBqASBsQAXCkAmCyQhKAWhDAYQjeAYi2AQQg2AFgyAFQgRABgRABg");
	this.shape_228.setTransform(352.5,291);

	this.shape_229 = new cjs.Shape();
	this.shape_229.graphics.f("#FFFFFF").s().p("AixhyIACgqQgHhUgQhcIgThZIGMCrIA/ASQAVBqASBsQAXCkAmCyQhKAWhDAYQjeAYi2AQIhoAKIgiACQCjiRABmHg");
	this.shape_229.setTransform(352.5,291);

	this.shape_230 = new cjs.Shape();
	this.shape_230.graphics.f().s("#333333").ss(1,1,1).p("AlKGQQCriQAQl7QACgVACgUQgEhKgNhSIgQhPIGDC6QAcAIAcAJQANBjAKBlQAICeAdCtQhLAXhCAZQjRAIiwAFQg1ABgxACQgQABgRAAg");
	this.shape_230.setTransform(347.5,298.3);

	this.shape_231 = new cjs.Shape();
	this.shape_231.graphics.f("#FFFFFF").s().p("AiPh7IAEgpQgEhKgNhSIgQhPIGDC6IA4ARQANBjAKBlQAICeAdCtQhLAXhCAZQjRAIiwAFQg1ABgxACIghABQCriQAQl7g");
	this.shape_231.setTransform(347.5,298.3);

	this.shape_232 = new cjs.Shape();
	this.shape_232.graphics.f().s("#333333").ss(1,1,1).p("Ak/FwQCziPAglvQADgUADgUQgBhAgLhIIgMhFIF6DKQAYAHAYAIQAFBdACBfQgHCWAUCoQhMAYhBAcQjDgJirgHQgygCgxgBQgQgBgRAAg");
	this.shape_232.setTransform(342.4,306.6);

	this.shape_233 = new cjs.Shape();
	this.shape_233.graphics.f("#FFFFFF").s().p("Ai7F0QgygCgxgBIghgBQCziPAglvIAGgnQgBhBgLhHIgMhGIF6DKIAwAPQAFBdACBfQgHCWAUCoQhMAYhBAbIlugPg");
	this.shape_233.setTransform(342.4,306.6);

	this.shape_234 = new cjs.Shape();
	this.shape_234.graphics.f().s("#333333").ss(1,1,1).p("Ak+FHQC7iNAvljQAFgSAEgUQABg2gIg/IgJg6IFxDZQAVAGAUAHQgDBXgGBaQgVCNAJCkQhNAYhBAdQi0gYilgTQgxgGgvgDQgRgCgQgCg");
	this.shape_234.setTransform(338.5,315.7);

	this.shape_235 = new cjs.Shape();
	this.shape_235.graphics.f("#FFFFFF").s().p("Ai9FUQgxgGgvgDIghgEQC7iNAvljIAJgmQABg3gIg+IgJg6IFxDZIApAMQgDBYgHBZQgVCNAKClQhMAYhCAdQi0gYilgTg");
	this.shape_235.setTransform(338.5,315.7);

	this.shape_236 = new cjs.Shape();
	this.shape_236.graphics.f().s("#333333").ss(1,1,1).p("AlHEfQDEiMA+lWQAFgTAFgTQAFgtgFgzIgGgxIFoDpQARAEAQAGQgKBRgPBUQgkCFABCfQhOAZhAAgQingpifgeQgwgKgugGQgRgDgQgCg");
	this.shape_236.setTransform(335.4,324.8);

	this.shape_237 = new cjs.Shape();
	this.shape_237.graphics.f("#FFFFFF").s().p("AjJE0QgvgKgugGIghgFQDEiMA+lWIAKgmQAFgtgFgzIgHgxIFpDpQARAEAQAGQgKBRgPBUQgkCFAACfQhNAZhAAgQingpiggeg");
	this.shape_237.setTransform(335.4,324.8);

	this.shape_238 = new cjs.Shape();
	this.shape_238.graphics.f().s("#333333").ss(1,1,1).p("AlQD2QDMiKBNlKQAHgSAHgSQAGgkgCgpIgDgmIFfD3QAOAEAMAFQgSBKgXBPQgzB8gJCcQhOAZhAAhQiYg5iagpQgugOgugJQgQgDgQgEg");
	this.shape_238.setTransform(332.4,333.9);

	this.shape_239 = new cjs.Shape();
	this.shape_239.graphics.f("#FFFFFF").s().p("AjUEUQgugOgugJIgggHQDMiKBNlKIAOgkQAGgkgCgpIgDgmIFfD3IAaAJQgSBKgXBPQgzB8gJCcQhOAZhAAhQiYg5iagpg");
	this.shape_239.setTransform(332.4,333.9);

	this.shape_240 = new cjs.Shape();
	this.shape_240.graphics.f().s("#333333").ss(1,1,1).p("AlZDOQDUiKBdk9QAHgSAIgSQAJgZABgfIAAgcIFXEHQAJACAJAEQgaBEggBLQhBBzgSCXQhPAag/AjQiLhKiUg1QgtgRgsgLQgRgFgPgEg");
	this.shape_240.setTransform(329.4,343);

	this.shape_241 = new cjs.Shape();
	this.shape_241.graphics.f("#FFFFFF").s().p("AjgDzQgtgQgsgMIgggJQDUiKBdk9IAPgkQAJgZABgfIAAgcIFXEHQAJADAJAEQgaBDggBLQhBBzgSCXQhPAag/AjQiLhKiUg1g");
	this.shape_241.setTransform(329.4,343);

	this.shape_242 = new cjs.Shape();
	this.shape_242.graphics.f().s("#333333").ss(1,1,1).p("AliClQDciHBtkyQAIgRAJgRQAKgQAEgVIADgSIFQEWQAFACAFADQghA+goBEQhQBrgcCTQhPAbhAAkQh8hZiPhBQgrgVgsgOQgPgGgQgFg");
	this.shape_242.setTransform(326.3,352.1);

	this.shape_243 = new cjs.Shape();
	this.shape_243.graphics.f("#FFFFFF").s().p("AjsDTQgrgUgsgPIgfgLQDciHBtkyIARgiQAKgPAEgWIADgRIFQEVQAFACAFADQghA+goBFQhQBqgcCTQhPAbhAAlQh8haiPhBg");
	this.shape_243.setTransform(326.3,352.1);

	this.shape_244 = new cjs.Shape();
	this.shape_244.graphics.f().s("#333333").ss(1,1,1).p("AlrB8QDkiEB8knQAKgQAIgRQAOgGAHgLIAGgHIFHElQACABABABQgpA4gxA/QheBjglCOQhQAcg/AmQhvhqiJhMQgpgYgrgSQgQgGgPgHg");
	this.shape_244.setTransform(323.3,361.2);

	this.shape_245 = new cjs.Shape();
	this.shape_245.graphics.f("#FFFFFF").s().p("Aj4CzQgpgYgrgSIgfgNQDkiEB8knIASghQAOgGAHgLIAGgHIFHElQAAAAABABQAAAAABAAQAAAAABABQAAAAAAAAIhaB3QheBjglCOQhQAcg/AmQhvhqiJhMg");
	this.shape_245.setTransform(323.3,361.2);

	this.shape_246 = new cjs.Shape();
	this.shape_246.graphics.f().s("#333333").ss(1,1,1).p("Al3BXQDuiDCJkbQALgQAKgQQARAEAKgBIAKADIE+E1QgCgBgDABQgwAwg5A8QhuBaguCJQhRAdg9AoQhih6iEhYQgogcgqgUQgPgIgQgHg");
	this.shape_246.setTransform(320.5,370);

	this.shape_247 = new cjs.Shape();
	this.shape_247.graphics.f("#FFFFFF").s().p("AkFCWQgogcgqgUIgggPQDuiDCJkbIAWggQAQAEALgBIAJADIE+E1IgFAAIhpBsQhuBaguCJQhRAdg9AoQhih6iDhYg");
	this.shape_247.setTransform(320.5,370);

	this.shape_248 = new cjs.Shape();
	this.shape_248.graphics.f().s("#333333").ss(1,1,1).p("AmDA9QD1iACYkQQAMgPANgPQATAOANAJIFBFRQgFgCgHAAQg4AqhBA2Qh8BSg4CFQhQAdg+AqQhUiLh+hjQgmgggqgWQgPgJgPgJg");
	this.shape_248.setTransform(317.9,377.7);

	this.shape_249 = new cjs.Shape();
	this.shape_249.graphics.f("#FFFFFF").s().p("AkVCFQgmgggqgWIgegSQD1iACYkQIAZgeIAgAWIFBFSIgMgCQg4AqhBA2Qh8BSg4CEQhQAeg+ApQhUiKh+hjg");
	this.shape_249.setTransform(317.9,377.7);

	this.shape_250 = new cjs.Shape();
	this.shape_250.graphics.f().s("#333333").ss(1,1,1).p("AmQAjQD+h/CnkCQANgPAOgPQAVAXAQAUIAQAWIEsFSQgJgDgKgBQhAAmhKAwQiKBKhCCAQhRAeg9AsQhGibh5hvQgkgjgpgZQgPgKgPgKg");
	this.shape_250.setTransform(315.2,385.3);

	this.shape_251 = new cjs.Shape();
	this.shape_251.graphics.f("#FFFFFF").s().p("AklBzQgkgjgogZIgfgUQD+h/CnkCIAbgeQAWAXAQAUIAPAWIEsFSQgJgDgKgBQhAAmhKAwQiKBKhCCAQhQAeg+AsQhGibh5hvg");
	this.shape_251.setTransform(315.2,385.3);

	this.shape_252 = new cjs.Shape();
	this.shape_252.graphics.f().s("#333333").ss(1,1,1).p("AmdAKQEHh+C2j2QAOgPAPgOQAYAhATAeIATAhIEjFhQgNgEgOgCQhIAfhSAsQiZBAhLB8QhRAfg9AuQg4irh0h7QgigmgogdQgPgKgPgLg");
	this.shape_252.setTransform(312.6,392.9);

	this.shape_253 = new cjs.Shape();
	this.shape_253.graphics.f("#FFFFFF").s().p("Ak1BiQgigmgogcIgegWQEHh+C2j2IAdgdQAYAhATAeIATAhIEjFhQgNgEgOgCQhHAfhSAsQiaBAhLB8QhRAfg9AuQg4irh0h7g");
	this.shape_253.setTransform(312.6,392.9);

	this.shape_254 = new cjs.Shape();
	this.shape_254.graphics.f().s("#333333").ss(1,1,1).p("AmpgOQEOh+DGjqQAQgOAPgOQAbArAWAoIAWArIEaFxQgQgFgSgEQhQAahaAmQioA4hSB4QhUAfg9AwQgqi8huiGQghgqgmgfQgQgKgOgMg");
	this.shape_254.setTransform(309.9,400.5);

	this.shape_255 = new cjs.Shape();
	this.shape_255.graphics.f("#FFFFFF").s().p("AlEBRQghgqgngfIgdgWQEOh+DFjqIAggcQAaArAXAoIAVArIEbFxQgRgFgSgEQhPAahbAmQinA4hTB4QhUAfg8AwQgqi8huiGg");
	this.shape_255.setTransform(309.9,400.5);

	this.shape_256 = new cjs.Shape();
	this.shape_256.graphics.f().s("#333333").ss(1,1,1).p("Am3gnQEXh9DVjeQASgNAQgNQAdA1AZAxIAZA2IESF/QgUgGgWgEQhXAThjAhQi2AwhcBzQhVAgg8AxQgcjLhpiSQgfgugmggQgPgMgPgNg");
	this.shape_256.setTransform(307.3,408.1);

	this.shape_257 = new cjs.Shape();
	this.shape_257.graphics.f("#FFFFFF").s().p("AlUBAQgfgugmggIgegZQEYh9DVjeIAhgaQAdA1AaAxIAYA2IESF/QgVgGgWgEQhWAThjAhQi2AwhcBzQhVAgg8AxQgcjLhpiSg");
	this.shape_257.setTransform(307.3,408.1);

	this.shape_258 = new cjs.Shape();
	this.shape_258.graphics.f().s("#333333").ss(1,1,1).p("AnDhBQEfh7DkjRQASgNASgNQAgA/AcA8IAcA/IEIGPQgYgHgZgFQhfANhrAbQjFAohlBuQhWAhg8AzQgOjchiidQgegwglgkQgPgOgOgOg");
	this.shape_258.setTransform(304.6,415.7);

	this.shape_259 = new cjs.Shape();
	this.shape_259.graphics.f("#FFFFFF").s().p("AljAvQgegwglgkIgdgcQEfh7DkjRIAkgaQAgA/AcA8IAcA/IEIGPQgYgHgZgFQhfANhrAbQjFAohlBuQhWAhg8AzQgOjchiidg");
	this.shape_259.setTransform(304.6,415.7);

	this.shape_260 = new cjs.Shape();
	this.shape_260.graphics.f().s("#333333").ss(1,1,1).p("AnQhaQEnh6D0jFQAUgMATgNQAiBJAfBGIAfBKID/GeQgbgIgdgHQhnAHh0AWQjRAfhxBrQhWAhg7A1QAAjshdipQgdgzgkgoQgOgOgPgPg");
	this.shape_260.setTransform(302,423.3);

	this.shape_261 = new cjs.Shape();
	this.shape_261.graphics.f("#FFFFFF").s().p("AlyAeQgdgzgkgoIgdgdQEoh6DzjFIAngZQAiBJAfBGIAfBKID/GeQgbgIgegHQhmAHh0AWQjRAfhxBrQhWAhg8A1QABjshdipg");
	this.shape_261.setTransform(302,423.3);

	this.shape_262 = new cjs.Shape();
	this.shape_262.graphics.f().s("#333333").ss(1,1,1).p("AndhzQEwh5EDi5QAUgMAVgLQAkBSAjBQIAiBUID2GuQgfgKghgHQhuABh8AQQjgAXh6BmQhXAig7A3QAOj9hYi0Qgbg3gjgqQgOgQgPgPg");
	this.shape_262.setTransform(299.3,430.9);

	this.shape_263 = new cjs.Shape();
	this.shape_263.graphics.f("#FFFFFF").s().p("AmCAMQgbg3gjgqIgdgeQEwh5EDi5IApgYIBHCjIAhBUID3GuQgfgKghgHQhvAAh7ARQjgAXh6BlQhYAjg6A2QANj8hXi1g");
	this.shape_263.setTransform(299.3,430.9);

	this.shape_264 = new cjs.Shape();
	this.shape_264.graphics.f().s("#333333").ss(1,1,1).p("AnqiNQE4h3ETitQAVgLAVgLQAoBcAlBaIAlBeIDuG9QgjgKglgIQh2gGiFALQjuAPiEBhQhXAjg7A4QAckMhSi+QgZg9gigtQgPgRgOgQg");
	this.shape_264.setTransform(296.7,438.5);

	this.shape_265 = new cjs.Shape();
	this.shape_265.graphics.f("#FFFFFF").s().p("AmSgCQgZg9gigtIgdghQE4h3ETitIAqgWQAoBcAlBaIAlBeIDuG9QgjgKglgIQh2gGiFALQjuAOiEBiQhXAjg7A4QAckMhSi+g");
	this.shape_265.setTransform(296.7,438.5);

	this.shape_266 = new cjs.Shape();
	this.shape_266.graphics.f().s("#333333").ss(1,1,1).p("An3inQFBh1EiihQAWgKAXgLQAqBmAoBkIAoBoIDkHNQgmgLgogKQh+gMiNAHQj9AFiOBdQhYAjg6A7QArkdhOjKQgWhAgigwQgPgRgOgSg");
	this.shape_266.setTransform(294,446.1);

	this.shape_267 = new cjs.Shape();
	this.shape_267.graphics.f("#FFFFFF").s().p("AmigUQgXg/ghgwIgcgkQFAh1EiihIAtgVIBSDKIAoBpIDlHMQgngLgogJQh+gMiNAFQj9AGiOBdQhYAjg6A7QArkdhOjKg");
	this.shape_267.setTransform(294,446.1);

	this.shape_268 = new cjs.Shape();
	this.shape_268.graphics.f().s("#333333").ss(1,1,1).p("AoDjAQFIh0ExiVQAYgKAXgKQAtBwArBvIAsByIDbHcQgqgNgtgKQiFgSiVABQkMgDiWBYQhaAlg5A8QA4kuhHjVQgWhDghgzQgNgTgOgSg");
	this.shape_268.setTransform(291.4,453.7);

	this.shape_269 = new cjs.Shape();
	this.shape_269.graphics.f("#FFFFFF").s().p("AmxglQgWhEghgyIgbglQFIh0ExiVIAvgUIBYDfIAsByIDbHbQgqgMgtgKQiFgSiVAAQkMgCiWBYQhaAlg5A7QA4kthHjVg");
	this.shape_269.setTransform(291.4,453.7);

	this.shape_270 = new cjs.Shape();
	this.shape_270.graphics.f().s("#333333").ss(1,1,1).p("AoQjaQFRhyFAiIQAZgKAZgJQAuB5AvB5IAuB8IDTHrQgugOgwgLQiNgYiegFQkagLigBUQhaAlg5A+QBGk9hCjhQgUhHggg2QgNgTgOgUg");
	this.shape_270.setTransform(288.7,461.3);

	this.shape_271 = new cjs.Shape();
	this.shape_271.graphics.f("#FFFFFF").s().p("AnBg2QgUhHggg2IgbgnQFRhyFAiIIAygTIBdDyIAuB8IDTHrQgugOgwgLQiNgYiegFQkagLigBUQhaAlg5A+QBGk9hCjhg");
	this.shape_271.setTransform(288.7,461.3);

	this.shape_272 = new cjs.Shape();
	this.shape_272.graphics.f().s("#333333").ss(1,1,1).p("AodjzQFZhxFQh8QAagJAagJQAxCEAxCCIAyCHIDKH6QgygOg0gMQiUgfimgKQkpgTiqBPQhbAmg5A/QBVlNg8jtQgThLgfg4QgNgUgOgVg");
	this.shape_272.setTransform(286.1,468.9);

	this.shape_273 = new cjs.Shape();
	this.shape_273.graphics.f("#FFFFFF").s().p("AnQhHQgThLgfg4IgbgpQFZhxFQh8IA0gSIBiEGIAyCHIDKH6QgygPg0gMQiUgeimgKQkpgTiqBOQhbAmg5BAQBVlOg8jsg");
	this.shape_273.setTransform(286.1,468.9);

	this.shape_274 = new cjs.Shape();
	this.shape_274.graphics.f().s("#333333").ss(1,1,1).p("AoqkNIL3jwIFeO1QjLg8jtgVQnYgrinDCQBjleg3j4QgRhPgeg7g");
	this.shape_274.setTransform(283.4,476.5);

	this.shape_275 = new cjs.Shape();
	this.shape_275.graphics.f("#FFFFFF").s().p("AnghYQgRhPgeg7IgbgrIL3jwIFeO1QjLg8jtgVQnYgrinDCQBjleg3j4g");
	this.shape_275.setTransform(283.4,476.5);

	this.shape_276 = new cjs.Shape();
	this.shape_276.graphics.f().s("#333333").ss(1,1,1).p("AoojkILbkVIF2N1QhXgahggQQhrgNh1gCQmJgPiuCbQgcAUgWAXQBJlKhHjqQgVhKghg3g");
	this.shape_276.setTransform(282.9,494.4);

	this.shape_277 = new cjs.Shape();
	this.shape_277.graphics.f("#FFFFFF").s().p("AnVg6QgVhKghg3IgdgpILbkVIF2N1QhXgahggQQhrgNh1gCQmJgPiuCbQgcAUgWAXQBJlKhHjqg");
	this.shape_277.setTransform(282.9,494.4);

	this.shape_278 = new cjs.Shape();
	this.shape_278.graphics.f().s("#333333").ss(1,1,1).p("Aoni7ILBk7IGOM2QhMgVhTgNQhogEhvAFQl5AHioCoQgcATgYAWQAxk3hZjbQgZhFgkg1g");
	this.shape_278.setTransform(282.5,512.2);

	this.shape_279 = new cjs.Shape();
	this.shape_279.graphics.f("#FFFFFF").s().p("AnLgbQgYhFglg1IgfgmILAk7IGPM2QhMgVhTgNQhogEhwAFQl3AHiqCoQgbATgYAWQAwk3hYjbg");
	this.shape_279.setTransform(282.5,512.2);

	this.shape_280 = new cjs.Shape();
	this.shape_280.graphics.f().s("#333333").ss(1,1,1).p("AomiSIKnlgIGmL3QhBgShHgJQhjAEhrANQlmAdikC0QgcASgZAVQAXkjhqjOQgcg/gngxg");
	this.shape_280.setTransform(282,530);

	this.shape_281 = new cjs.Shape();
	this.shape_281.graphics.f("#FFFFFF").s().p("AnAACQgdg/gogxIgggkIKllgIGmL3QhAgShHgJQhjAEhrANQlmAdikC0QgdASgYAVQAXkjhpjOg");
	this.shape_281.setTransform(282,530);

	this.shape_282 = new cjs.Shape();
	this.shape_282.graphics.f().s("#333333").ss(1,1,1).p("AokhpIKLmGICPDRIEvHnQg1gOg7gGQhfAOhlAVQlVAyifDBQgeARgZAUQgCkPh7jBQggg7grgtg");
	this.shape_282.setTransform(281.5,547.9);

	this.shape_283 = new cjs.Shape();
	this.shape_283.graphics.f("#FFFFFF").s().p("Am2AhQghg8gqgtIgjghIKKmGICQDRIEvHnQg1gNg7gHQhfAOhlAUQlWA0ieDAQgeARgZAUQgCkPh6jAg");
	this.shape_283.setTransform(281.5,547.9);

	this.shape_284 = new cjs.Shape();
	this.shape_284.graphics.f().s("#333333").ss(1,1,1).p("AojhAIJwmrICPCgIFIHYQgqgJgugDQhbAWhhAdQlEBJiZDMQgeARgbASQgaj7iMiyQgkg4gugog");
	this.shape_284.setTransform(281,565.7);

	this.shape_285 = new cjs.Shape();
	this.shape_285.graphics.f("#FFFFFF").s().p("AmsA/Qgkg4gugoIglgfIJwmrICPCgIFHHYQgogJgwgDQhaAWhhAdQlEBJiZDMQgeARgbASQgaj7iMiyg");
	this.shape_285.setTransform(281,565.7);

	this.shape_286 = new cjs.Shape();
	this.shape_286.graphics.f().s("#333333").ss(1,1,1).p("AohgXIJUnRICPBxIFgHIQgdgFgjABQhXAehcAlQkyBfiUDZQgfAPgbASQg0joidijQgog0gxgng");
	this.shape_286.setTransform(280.5,583.5);

	this.shape_287 = new cjs.Shape();
	this.shape_287.graphics.f("#FFFFFF").s().p("AmiBeQgog0gxgnIgmgaIJUnRICPBxIFgHIQgdgFgjABQhXAehcAlQkyBfiUDZQgfAPgbASQg0joidijg");
	this.shape_287.setTransform(280.5,583.5);

	this.shape_288 = new cjs.Shape();
	this.shape_288.graphics.f().s("#333333").ss(1,1,1).p("AogAQII6n0ICNBBIF6G5QgSgCgXAFQhSAmhXAuQkjB0iMDmQggAOgdAQQhMjUiuiUQgsgwg0gjg");
	this.shape_288.setTransform(280,601.3);

	this.shape_289 = new cjs.Shape();
	this.shape_289.graphics.f("#FFFFFF").s().p("AmXB9Qgsgwg0gjIgpgaII6n0ICNBBIF6G5QgSgCgXAFQhSAmhXAuQkjB0iMDmQggAOgdAQQhMjUiuiUg");
	this.shape_289.setTransform(280,601.3);

	this.shape_290 = new cjs.Shape();
	this.shape_290.graphics.f().s("#333333").ss(1,1,1).p("AofA5IIfoaICNARIGSGsQgGADgLAIQhNAthTA1QkRCKiIDyQggAOgdAPQhmjBi/iGQgwgrg3ggg");
	this.shape_290.setTransform(279.6,619.2);

	this.shape_291 = new cjs.Shape();
	this.shape_291.graphics.f("#FFFFFF").s().p("AmNCbQgvgrg4ggIgqgXIIeoaICNARIGTGsQgHADgKAIQhOAthTA1QkRCKiIDyQgfAOgeAPQhmjBi/iGg");
	this.shape_291.setTransform(279.6,619.2);

	this.shape_292 = new cjs.Shape();
	this.shape_292.graphics.f().s("#333333").ss(1,1,1).p("AogByIIGpAICKgfIGrGdQAFAGACAMQhKA3hOA7Qj/CgiED/QgfAMgfAPQh/itjQh4Qgzgmg7gdg");
	this.shape_292.setTransform(279.4,635.5);

	this.shape_293 = new cjs.Shape();
	this.shape_293.graphics.f("#FFFFFF").s().p("AmGDJQgzgmg7gdIgsgUIIFpAICLgfIGqGdQAGAGABAMQhJA3hOA7Qj/CgiFD/QgeAMgfAPQh/itjQh4g");
	this.shape_293.setTransform(279.4,635.5);

	this.shape_294 = new cjs.Shape();
	this.shape_294.graphics.f().s("#333333").ss(1,1,1).p("AorCyIHrplICJhOIHEGNQARAKANAPQhEBAhJBDQjuC3h/ELQgiALgeANQiYiZjghpQg4gjg+gYg");
	this.shape_294.setTransform(280.1,650.9);

	this.shape_295 = new cjs.Shape();
	this.shape_295.graphics.f("#FFFFFF").s().p("AmHEAQg4gjg+gYIgugTIHrpkICJhPIHFGNQAQAKANAQIiNCDQjuC2h/ELQgiALgeANQiXiYjhhqg");
	this.shape_295.setTransform(280.1,650.9);

	this.shape_296 = new cjs.Shape();
	this.shape_296.graphics.f().s("#333333").ss(1,1,1).p("Ao1DzIHPqKICJh/IHdF+QAdAPAZASQhBBIhEBLQjcDMh6EYQgjAKggANQiviGjyhbQg8gdhBgVg");
	this.shape_296.setTransform(280.8,666.4);

	this.shape_297 = new cjs.Shape();
	this.shape_297.graphics.f("#FFFFFF").s().p("AmJE2Qg7gehCgUIgvgRIHQqLICIh+IHdF+QAdAPAZASIiFCTQjcDMh6EZQgiAJghAMQiviFjyhbg");
	this.shape_297.setTransform(280.8,666.4);

	this.shape_298 = new cjs.Shape();
	this.shape_298.graphics.f().s("#333333").ss(1,1,1).p("Ao/E1IG0qxICKiuIH0FvQAoASAlAWQg8BRg/BTQjKDih2EkQgjAJghALQjIhxkDhNQhAgZhEgSg");
	this.shape_298.setTransform(281.5,681.8);

	this.shape_299 = new cjs.Shape();
	this.shape_299.graphics.f("#FFFFFF").s().p("AmKFsQg/gYhFgTIgxgMIG0qxICKiuIH0FvQAoASAmAWIh8CjQjLDih0ElQgkAJghALQjJhykChNg");
	this.shape_299.setTransform(281.5,681.8);

	this.shape_300 = new cjs.Shape();
	this.shape_300.graphics.f().s("#333333").ss(1,1,1).p("ApKF1IGarWICJjdIINFfQA0AWAxAaQg4BZg6BbQi5D4hwExQgkAIgiAJQjihdkTg/QhEgUhIgPg");
	this.shape_300.setTransform(282.2,697.2);

	this.shape_301 = new cjs.Shape();
	this.shape_301.graphics.f("#FFFFFF").s().p("AmMGjQhDgUhIgPIgzgLIGarWICJjdIINFfQAzAWAyAaIhzC0Qi5D4hvExQgkAIgjAJQjhhdkUg/g");
	this.shape_301.setTransform(282.2,697.2);

	this.shape_302 = new cjs.Shape();
	this.shape_302.graphics.f().s("#333333").ss(1,1,1).p("ApUG2IIHwJIImFQQA/AaA+AdQg0Big2BlQinEMhqE9QglAHgkAJQj6hKklgwQhHgQhLgLg");
	this.shape_302.setTransform(282.9,712.7);

	this.shape_303 = new cjs.Shape();
	this.shape_303.graphics.f("#FFFFFF").s().p("AmNHaQhIgQhKgLIg1gJIIHwJIImFQQA/AaA+AdIhqDHQinEMhqE9QglAHgkAJQj7hKkkgwg");
	this.shape_303.setTransform(282.9,712.7);

	this.shape_304 = new cjs.Shape();
	this.shape_304.graphics.f().s("#333333").ss(1,1,1).p("ApfH3IFksgICHk+II/FAQBMAfBJAgQgvBrgyBtQiWEhhlFKQglAGglAHQkTg2k2ghQhLgMhOgIg");
	this.shape_304.setTransform(283.6,728.1);

	this.shape_305 = new cjs.Shape();
	this.shape_305.graphics.f("#FFFFFF").s().p("AmOIRQhMgMhNgIIg4gGIFksgICHk+II/FAQBLAfBKAgIhhDYQiVEhhmFKIhJANQkUg2k1ghg");
	this.shape_305.setTransform(283.6,728.1);

	this.shape_306 = new cjs.Shape();
	this.shape_306.graphics.f().s("#333333").ss(1,1,1).p("AppI4IFItGICHluIJYExQBXAjBVAkQgrBzgsB1QiFE3hfFWQgnAGglAGQksgjlHgTQhPgHhRgEg");
	this.shape_306.setTransform(284.3,743.5);

	this.shape_307 = new cjs.Shape();
	this.shape_307.graphics.f("#FFFFFF").s().p("AmQJHQhPgHhRgEIg5gEIFItGICHluIJYExQBXAjBVAkIhXDoQiFE3hfFWIhMAMQksgjlHgTg");
	this.shape_307.setTransform(284.3,743.5);

	this.shape_308 = new cjs.Shape();
	this.shape_308.graphics.f().s("#333333").ss(1,1,1).p("Ap0J5IEutsICGmdIJwEiQBjAmBiAoQgnB7gnB9QhzFNhbFjQgnAEgmAFQlGgPlYgEQhTgDhUgBg");
	this.shape_308.setTransform(285,759);

	this.shape_309 = new cjs.Shape();
	this.shape_309.graphics.f("#FFFFFF").s().p("AmSJ+QhTgDhUgBIg7gBIEutsICGmdIJwEiIDFBOIhOD4QhzFNhbFjIhNAJQlGgPlYgEg");
	this.shape_309.setTransform(285,759);

	this.shape_310 = new cjs.Shape();
	this.shape_310.graphics.f().s("#333333").ss(1,1,1).p("Ap+KwIETuSICEnNIKKETQBuAqBuArQgiCEgjCFQhhFjhWFvQgnAEgoADQleAFlpAKQhXAChXACg");
	this.shape_310.setTransform(285.7,775.4);

	this.shape_311 = new cjs.Shape();
	this.shape_311.graphics.f("#FFFFFF").s().p("AlrjiICEnNIKKETIDcBVIhFEJQhhFjhWFvIhPAHQleAFlpAKIiuAEIg9ACg");
	this.shape_311.setTransform(285.7,775.4);

	this.shape_312 = new cjs.Shape();
	this.shape_312.graphics.f().s("#333333").ss(1,1,1).p("AkNraIOXFhIjcQOIw3BGg");
	this.shape_312.setTransform(286.4,793.1);

	this.shape_313 = new cjs.Shape();
	this.shape_313.graphics.f("#FFFFFF").s().p("AkNraIOXFgIjcQPIw3BFg");
	this.shape_313.setTransform(286.4,793.1);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[]}).to({state:[{t:this.shape_143},{t:this.shape_142}]},4).to({state:[{t:this.shape_145},{t:this.shape_144}]},1).to({state:[{t:this.shape_147},{t:this.shape_146}]},1).to({state:[{t:this.shape_149},{t:this.shape_148}]},1).to({state:[{t:this.shape_151},{t:this.shape_150}]},1).to({state:[{t:this.shape_153},{t:this.shape_152}]},1).to({state:[{t:this.shape_155},{t:this.shape_154}]},1).to({state:[{t:this.shape_157},{t:this.shape_156}]},1).to({state:[{t:this.shape_159},{t:this.shape_158}]},1).to({state:[{t:this.shape_161},{t:this.shape_160}]},1).to({state:[{t:this.shape_163},{t:this.shape_162}]},1).to({state:[{t:this.shape_165},{t:this.shape_164}]},1).to({state:[{t:this.shape_167},{t:this.shape_166}]},1).to({state:[{t:this.shape_169},{t:this.shape_168}]},1).to({state:[{t:this.shape_171},{t:this.shape_170}]},1).to({state:[{t:this.shape_173},{t:this.shape_172}]},1).to({state:[{t:this.shape_175},{t:this.shape_174}]},1).to({state:[{t:this.shape_177},{t:this.shape_176}]},1).to({state:[{t:this.shape_179},{t:this.shape_178}]},1).to({state:[{t:this.shape_181},{t:this.shape_180}]},1).to({state:[{t:this.shape_183},{t:this.shape_182}]},1).to({state:[{t:this.shape_185},{t:this.shape_184}]},1).to({state:[{t:this.shape_187},{t:this.shape_186}]},1).to({state:[{t:this.shape_189},{t:this.shape_188}]},1).to({state:[{t:this.shape_191},{t:this.shape_190}]},1).to({state:[{t:this.shape_193},{t:this.shape_192}]},1).to({state:[{t:this.shape_195},{t:this.shape_194}]},1).to({state:[{t:this.shape_197},{t:this.shape_196}]},1).to({state:[{t:this.shape_199},{t:this.shape_198}]},1).to({state:[{t:this.shape_201},{t:this.shape_200}]},1).to({state:[{t:this.shape_203},{t:this.shape_202}]},1).to({state:[{t:this.shape_205},{t:this.shape_204}]},1).to({state:[{t:this.shape_207},{t:this.shape_206}]},1).to({state:[{t:this.shape_209},{t:this.shape_208}]},1).to({state:[{t:this.shape_211},{t:this.shape_210}]},1).to({state:[{t:this.shape_213},{t:this.shape_212}]},1).to({state:[{t:this.shape_215},{t:this.shape_214}]},1).to({state:[{t:this.shape_217},{t:this.shape_216}]},1).to({state:[{t:this.shape_219},{t:this.shape_218}]},1).to({state:[{t:this.shape_221},{t:this.shape_220}]},1).to({state:[{t:this.shape_223},{t:this.shape_222}]},1).to({state:[{t:this.shape_225},{t:this.shape_224}]},1).to({state:[{t:this.shape_227},{t:this.shape_226}]},1).to({state:[{t:this.shape_229},{t:this.shape_228}]},1).to({state:[{t:this.shape_231},{t:this.shape_230}]},1).to({state:[{t:this.shape_233},{t:this.shape_232}]},1).to({state:[{t:this.shape_235},{t:this.shape_234}]},1).to({state:[{t:this.shape_237},{t:this.shape_236}]},1).to({state:[{t:this.shape_239},{t:this.shape_238}]},1).to({state:[{t:this.shape_241},{t:this.shape_240}]},1).to({state:[{t:this.shape_243},{t:this.shape_242}]},1).to({state:[{t:this.shape_245},{t:this.shape_244}]},1).to({state:[{t:this.shape_247},{t:this.shape_246}]},1).to({state:[{t:this.shape_249},{t:this.shape_248}]},1).to({state:[{t:this.shape_251},{t:this.shape_250}]},1).to({state:[{t:this.shape_253},{t:this.shape_252}]},1).to({state:[{t:this.shape_255},{t:this.shape_254}]},1).to({state:[{t:this.shape_257},{t:this.shape_256}]},1).to({state:[{t:this.shape_259},{t:this.shape_258}]},1).to({state:[{t:this.shape_261},{t:this.shape_260}]},1).to({state:[{t:this.shape_263},{t:this.shape_262}]},1).to({state:[{t:this.shape_265},{t:this.shape_264}]},1).to({state:[{t:this.shape_267},{t:this.shape_266}]},1).to({state:[{t:this.shape_269},{t:this.shape_268}]},1).to({state:[{t:this.shape_271},{t:this.shape_270}]},1).to({state:[{t:this.shape_273},{t:this.shape_272}]},1).to({state:[{t:this.shape_275},{t:this.shape_274}]},1).to({state:[{t:this.shape_277},{t:this.shape_276}]},1).to({state:[{t:this.shape_279},{t:this.shape_278}]},1).to({state:[{t:this.shape_281},{t:this.shape_280}]},1).to({state:[{t:this.shape_283},{t:this.shape_282}]},1).to({state:[{t:this.shape_285},{t:this.shape_284}]},1).to({state:[{t:this.shape_287},{t:this.shape_286}]},1).to({state:[{t:this.shape_289},{t:this.shape_288}]},1).to({state:[{t:this.shape_291},{t:this.shape_290}]},1).to({state:[{t:this.shape_293},{t:this.shape_292}]},1).to({state:[{t:this.shape_295},{t:this.shape_294}]},1).to({state:[{t:this.shape_297},{t:this.shape_296}]},1).to({state:[{t:this.shape_299},{t:this.shape_298}]},1).to({state:[{t:this.shape_301},{t:this.shape_300}]},1).to({state:[{t:this.shape_303},{t:this.shape_302}]},1).to({state:[{t:this.shape_305},{t:this.shape_304}]},1).to({state:[{t:this.shape_307},{t:this.shape_306}]},1).to({state:[{t:this.shape_309},{t:this.shape_308}]},1).to({state:[{t:this.shape_311},{t:this.shape_310}]},1).to({state:[{t:this.shape_313},{t:this.shape_312}]},1).to({state:[]},1).wait(36));

	// 纸
	this.shape_314 = new cjs.Shape();
	this.shape_314.graphics.f().s("#333333").ss(1,1,1).p("AmohOIH9jJIF8H9IuhAyg");
	this.shape_314.setTransform(101.8,448);

	this.shape_315 = new cjs.Shape();
	this.shape_315.graphics.f("#FFFFFF").s().p("AmohOIH9jJIF8H9IuhAyg");
	this.shape_315.setTransform(101.8,448);

	this.shape_316 = new cjs.Shape();
	this.shape_316.graphics.f().s("#333333").ss(1,1,1).p("AnMD7IAViDQAQhUAPhQQAFgcAFgcQB9gwBvgjQCGgtCJgjQAfArAfAqQBWB3BVBzQA8BbA7BbQjvAHjIASQi4ABiugJQg+gCg+gCg");
	this.shape_316.setTransform(115.5,430.8);

	this.shape_317 = new cjs.Shape();
	this.shape_317.graphics.f("#FFFFFF").s().p("AlQD/Ih8gEIAViDIAfikIAKg4QB9gwBvgjQCGgtCJgjIA+BVICrDqQA8BbA7BbQjvAHjIASIgVABQisAAilgJg");
	this.shape_317.setTransform(115.5,430.8);

	this.shape_318 = new cjs.Shape();
	this.shape_318.graphics.f().s("#333333").ss(1,1,1).p("AnIDQIAHg5IAThJQAXhQAUhQQAIgbAHgbQCEgxBsgZQCAgjCKgOQAeArAfAsQBXB8BVB2QAvBRAqBSQj6ABjEAaQi6gJilgaQg6gJg5gIg");
	this.shape_318.setTransform(129.2,415);

	this.shape_319 = new cjs.Shape();
	this.shape_319.graphics.f("#FFFFFF").s().p("AlVDgIhzgQIAHg5IAThJIAsigIAOg2QCFgyBrgYQCAgjCKgOIA+BYQBWB7BWB2QAuBRArBSQj7ABjFAaQi5gJilgbg");
	this.shape_319.setTransform(129.2,415);

	this.shape_320 = new cjs.Shape();
	this.shape_320.graphics.f().s("#333333").ss(1,1,1).p("AnECmIAHg6IAZhIQAdhPAahMQAKgaAJgaQCNg0BngOQB4gYCMAGQAeAsAgAuQBYCABVB4QAgBHAbBLQkGgFi/AiQi8gTicgtQg3gOg0gOg");
	this.shape_320.setTransform(142.8,399.1);

	this.shape_321 = new cjs.Shape();
	this.shape_321.graphics.f("#FFFFFF").s().p("AlZDCQg3gOg0gOIAHg6IAZhIIA3ibIATg0QCNg0BngOQB4gYCMAGIA+BaICtD4QAhBHAaBLQkGgFi/AiQi8gTicgtg");
	this.shape_321.setTransform(142.8,399.1);

	this.shape_322 = new cjs.Shape();
	this.shape_322.graphics.f().s("#333333").ss(1,1,1).p("Am/CDIAHg7IAehHQAjhMAghKQAMgZALgZQCWg2BigEQBzgNCMAaQAeAuAgAvQBZCEBWB8QARA9AMBCQkTgLi6ApQi+gciSg/Qg0gUgvgUg");
	this.shape_322.setTransform(156.5,382.5);

	this.shape_323 = new cjs.Shape();
	this.shape_323.graphics.f("#FFFFFF").s().p("AldCrQgzgUgwgUIAIg7IAehHIBDiWIAXgyQCVg2BjgEQBygNCNAaIA+BdQBZCEBVB8QASA9ALBCQkSgLi6ApQi+gciTg/g");
	this.shape_323.setTransform(156.5,382.5);

	this.shape_324 = new cjs.Shape();
	this.shape_324.graphics.f().s("#333333").ss(1,1,1).p("Am9BlIAIg8IAjhDQAqhNAmhGQAOgZAMgXQCeg4BfAGQBsgDCNAvQAeAuAhAyQBZCGBWCAQAEAzgFA6QkegQi3AwQjAgmiIhRQgwgagrgag");
	this.shape_324.setTransform(170.2,365.4);

	this.shape_325 = new cjs.Shape();
	this.shape_325.graphics.f("#FFFFFF").s().p("AliCZQgwgagrgaIAIg8IAjhDIBQiTIAagwQCeg4BfAGQBsgDCNAvIA/BgQBZCGBWCAQAEAzgFA6QkegQi3AwQjAgmiIhRg");
	this.shape_325.setTransform(170.2,365.4);

	this.shape_326 = new cjs.Shape();
	this.shape_326.graphics.f().s("#333333").ss(1,1,1).p("AnHBLIAIg9IAohBQAxhMArhDQAQgYAPgWQCmg6BbARQBmAHCNBDQAeAwAhAzQBaCLBXCCQgLApgUAyQkrgWiyA4QjCgwh+hkQgtgfgmggg");
	this.shape_326.setTransform(185.3,347.9);

	this.shape_327 = new cjs.Shape();
	this.shape_327.graphics.f("#FFFFFF").s().p("Al0CKQgtgfgmggIAIg9IAohBIBciPIAfguQCmg6BbARQBmAHCNBDIA/BjQBaCLBXCCQgLApgUAyQkrgWiyA4QjCgwh+hkg");
	this.shape_327.setTransform(185.3,347.9);

	this.shape_328 = new cjs.Shape();
	this.shape_328.graphics.f().s("#333333").ss(1,1,1).p("AnSAyIAIg8IAuhCQA3hKAxhAQASgXARgVQCug8BXAbQBhASCMBXQAfAxAhA1QBbCPBXCFQgZAggkAoQk3gbiuA/QjDg5h1h2Qgqglghgmg");
	this.shape_328.setTransform(200.5,330.3);

	this.shape_329 = new cjs.Shape();
	this.shape_329.graphics.f("#FFFFFF").s().p("AmHB9QgqglghgmIAIg8IAuhCIBoiKIAjgsQCug8BXAbQBhASCMBXIBABmQBbCPBXCFQgZAggkAoQk3gbiuA/QjDg5h1h2g");
	this.shape_329.setTransform(200.5,330.3);

	this.shape_330 = new cjs.Shape();
	this.shape_330.graphics.f().s("#333333").ss(1,1,1).p("AndAaIAJg+IAzhBQA9hIA2g9QAVgWATgUQC3g+BQAmQBdAcCNBrQAfAzAhA2QBcCTBXCIQgoAWgzAgQlCghirBHQjFhDhriIQgmgrgdgrg");
	this.shape_330.setTransform(215.6,312.7);

	this.shape_331 = new cjs.Shape();
	this.shape_331.graphics.f("#FFFFFF").s().p("AmaBwQgmgrgdgrIAJg+IAzhBIBziFIAogqQC3g+BQAmQBdAcCNBrIBABpQBcCTBXCIQgoAWgzAgQlCghirBHQjFhDhriIg");
	this.shape_331.setTransform(215.6,312.7);

	this.shape_332 = new cjs.Shape();
	this.shape_332.graphics.f().s("#333333").ss(1,1,1).p("AnoACIAJhAIA4g+QBFhHA8g6QAWgVAVgTQDAhABLAwQBYAnCMB/QAgA0AhA3QBdCZBWCKQg0AMhEAYQlOgnioBPQjFhNhiibQgjgwgYgxg");
	this.shape_332.setTransform(230.8,295);

	this.shape_333 = new cjs.Shape();
	this.shape_333.graphics.f("#FFFFFF").s().p("AmuBjQgigwgXgxIAJhAIA4g+QBEhHA7g6IAsgoQDAhABMAwQBWAnCNB/IBBBrQBdCZBWCKQg1AMhCAYQlPgninBPQjGhNhjibg");
	this.shape_333.setTransform(230.8,295);

	this.shape_334 = new cjs.Shape();
	this.shape_334.graphics.f().s("#333333").ss(1,1,1).p("AnygUIAJhDIA9g9QBKhFBCg3QAZgUAXgSQDHhCBIA6QBSAyCMCUQAgA0AiA5QBeCdBWCNQhDAChTAPQlagsikBWQjHhWhZitQgeg2gTg1g");
	this.shape_334.setTransform(245.9,277.3);

	this.shape_335 = new cjs.Shape();
	this.shape_335.graphics.f("#FFFFFF").s().p("AnBBXQgeg2gTg1IAJhDIA9g9QBKhFBCg3IAwgmQDHhCBIA6QBSAyCMCUIBCBtQBeCdBWCNQhDAChTAPQlagsikBWQjHhWhZitg");
	this.shape_335.setTransform(245.9,277.3);

	this.shape_336 = new cjs.Shape();
	this.shape_336.graphics.f().s("#333333").ss(1,1,1).p("An9gsIAJhEIBDg8QBQhDBIg0QAbgTAZgRQDQhEBDBFQBMA8CNCoQAfA2AiA4QBfCjBXCQQhRgIhjAHQlkgyiiBeQjIhghQi/Qgbg8gOg7g");
	this.shape_336.setTransform(261.1,259.6);

	this.shape_337 = new cjs.Shape();
	this.shape_337.graphics.f("#FFFFFF").s().p("AnUBLQgbg8gOg7IAJhEIBDg8QBQhDBIg0IA0gkQDQhEBDBFQBMA8CNCoIBBBuQBfCjBXCQQhRgIhjAHQlkgyiiBeQjIhghQi/g");
	this.shape_337.setTransform(261.1,259.6);

	this.shape_338 = new cjs.Shape();
	this.shape_338.graphics.f().s("#333333").ss(1,1,1).p("AoIhEIAKhFIBIg6QBXhBBMgyQAegSAbgQQDYhGBABPQBFBHCNC8QAgA3AiA6QBgCoBXCTQhggShygCQlwg4ieBlQjKhphGjRQgXhAgKhDg");
	this.shape_338.setTransform(276.2,241.9);

	this.shape_339 = new cjs.Shape();
	this.shape_339.graphics.f("#FFFFFF").s().p("AnnA/QgXhAgKhDIAKhFIBIg6QBXhBBMgyIA5giQDYhGBABPQBFBHCNC8IBCBxQBgCoBXCTQhggShygCQlwg4ieBlQjKhphGjRg");
	this.shape_339.setTransform(276.2,241.9);

	this.shape_340 = new cjs.Shape();
	this.shape_340.graphics.f().s("#333333").ss(1,1,1).p("AoThcIAKhGIBNg4QBehABSguQAggSAcgOQDfhIA+BZQBABRCNDRQAfA2AjA+QBhCsBXCVQhugciCgKQl8g9iaBsQjMhzg8jjQgUhGgFhJg");
	this.shape_340.setTransform(291.4,224.1);

	this.shape_341 = new cjs.Shape();
	this.shape_341.graphics.f("#FFFFFF").s().p("An6AzQgUhGgFhJIAKhGIBNg4QBehABSguIA8ggQDfhIA+BZQBABRCNDRIBCB0QBhCsBXCVQhugciCgKQl8g9iaBsQjMhzg8jjg");
	this.shape_341.setTransform(291.4,224.1);

	this.shape_342 = new cjs.Shape();
	this.shape_342.graphics.f().s("#333333").ss(1,1,1).p("Aoeh3IAKhIIBTg2QBkg+BYgsQAigQAegNQDohLA5BkQA6BcCNDkQAgA4AjA/QBiCxBXCYQh8gmiSgTQmIhDiWB1QjNh9gzj2QgRhLAAhPg");
	this.shape_342.setTransform(306.6,206.8);

	this.shape_343 = new cjs.Shape();
	this.shape_343.graphics.f("#FFFFFF").s().p("AERFkQmIhDiWB1QjOh9gyj2QgRhLAAhPIAKhIIBSg2QBkg+BZgsQAhgQAfgNQDnhLA5BkQA7BcCNDkIBDB3QBiCxBXCYQh8gmiSgTg");
	this.shape_343.setTransform(306.6,206.8);

	this.shape_344 = new cjs.Shape();
	this.shape_344.graphics.f().s("#333333").ss(1,1,1).p("AooiXIAKhJIBYg1QBrg8BdgoQAkgQAhgMQDvhMA2BuQA0BmCND5QAgA4AjBCQBjC0BYCbQiLgvihgbQmVhJiRB8QjPiHgpkIQgOhRAFhVg");
	this.shape_344.setTransform(321.6,189.8);

	this.shape_345 = new cjs.Shape();
	this.shape_345.graphics.f("#FFFFFF").s().p("AD/FrQmVhJiRB8QjPiHgpkIQgOhRAFhVIAKhJIBYg1QBrg8BdgoQAkgQAhgMQDvhMA2BuQA0BmCND5IBDB6QBjC0BYCbQiLgvihgbg");
	this.shape_345.setTransform(321.6,189.8);

	this.shape_346 = new cjs.Shape();
	this.shape_346.graphics.f().s("#333333").ss(1,1,1).p("AonkBIBdgzQBxg7BjglQE6h5A4CKQA5CJDHFxQBjC5BYCdQimg+jCglQmChIiOCDQjQiQggkYQgKhZAJhbg");
	this.shape_346.setTransform(336.6,172.9);

	this.shape_347 = new cjs.Shape();
	this.shape_347.graphics.f("#FFFFFF").s().p("ADPFqQmChIiOCDQjQiQggkYQgKhZAJhbIALhKIBdgzQBxg7BjglQE6h5A4CKQA5CJDHFxQBjC5BYCdQimg+jCglg");
	this.shape_347.setTransform(336.6,172.9);

	this.shape_348 = new cjs.Shape();
	this.shape_348.graphics.f().s("#333333").ss(1,1,1).p("AoviiQAGglAHgkQAugaAugaQAogWAngTQBEghA+gaQEyh6A3B8QAuBsCCDoQApBFAvBSQAIANAIAOQBXCpBPCSQifg0i5gcQhMgLhCgDQkHgah0BhQjRiNgnkSQgNhUAFhYg");
	this.shape_348.setTransform(338.2,181.4);

	this.shape_349 = new cjs.Shape();
	this.shape_349.graphics.f("#FFFFFF").s().p("ADaFwQhMgLhCgDQkHgah0BhQjRiNgnkSQgNhUAFhYIANhJIBcg0QAogWAngTQBEghA+gaQEyh6A3B8QAuBsCCDoIBYCXIAQAbQBXCpBPCSQifg0i5gcg");
	this.shape_349.setTransform(338.2,181.4);

	this.shape_350 = new cjs.Shape();
	this.shape_350.graphics.f().s("#333333").ss(1,1,1).p("AosiOQAHgjAIgkQAtgaAugbQAogWAmgUQBDgiA9gaQEqh9A1BuQAxBtCGDfQArBDAwBOQAIANAIAMQBVCpBLCUQiXgrixgTQhIgIg/ABQkEgch2BaQjSiKgwkKQgQhRAChWg");
	this.shape_350.setTransform(339.8,189.9);

	this.shape_351 = new cjs.Shape();
	this.shape_351.graphics.f("#FFFFFF").s().p("ADlF2QhIgIg/ABQkEgch2BaQjSiKgwkKQgQhRAChWIAPhHIBbg1IBOgqQBDgiA9gaQEqh9A1BuQAxBtCGDfIBbCRIAQAZQBVCpBLCUQiXgrixgTg");
	this.shape_351.setTransform(339.8,189.9);

	this.shape_352 = new cjs.Shape();
	this.shape_352.graphics.f().s("#333333").ss(1,1,1).p("Aooh+QAIgjAJgjQAtgaAtgcQAngWAmgUQBCgjA8gcQEih/A0BhQAzBtCJDXQAtA/AyBLQAIAMAJAMQBRCpBICUQiQghiogKQhFgEg7AEQkBgeh5BUQjSiIg4kBQgThPgChTg");
	this.shape_352.setTransform(341.3,198.8);

	this.shape_353 = new cjs.Shape();
	this.shape_353.graphics.f("#FFFFFF").s().p("AoTAkQgThPgChTIAQhHQAugZAtgcIBNgqQBCgjA9gcQEgiAA1BhQAzBuCKDWIBeCLIAQAYICaE9QiQghiogKQhFgEg8AEQkAgeh5BUQjTiIg3kBg");
	this.shape_353.setTransform(341.3,198.8);

	this.shape_354 = new cjs.Shape();
	this.shape_354.graphics.f().s("#333333").ss(1,1,1).p("AokhyQAJgiAJgjQAtgaAtgcQAngWAlgVQBBgkA7gdQEZiCAzBUQA2BuCNDNQAvBAAzBEQAIALAJAMQBOCpBFCVQiIgXiggBQhBgBg5AHQj9gfh8BNQjTiFhAj5QgVhMgGhRg");
	this.shape_354.setTransform(342.7,208.1);

	this.shape_355 = new cjs.Shape();
	this.shape_355.graphics.f("#FFFFFF").s().p("AoJArQgVhMgGhRIAShFQAtgaAtgcIBMgrQBBgkA7gdQEZiCAzBUQA2BuCNDNIBiCEIARAXICTE+QiIgXiggBQhBgBg5AHQj9gfh8BNQjTiFhAj5g");
	this.shape_355.setTransform(342.7,208.1);

	this.shape_356 = new cjs.Shape();
	this.shape_356.graphics.f().s("#333333").ss(1,1,1).p("AoghlQAKghAKgiQAtgbAsgcQAmgXAlgVQBBglA5gfQERiDAyBGQA4BuCQDFQAxA9A1BAQAJALAJALQBKCpBCCWQiBgNiXAHQg+ADg2ALQj5ghh/BGQjTiDhIjwQgYhKgKhOg");
	this.shape_356.setTransform(344.2,217.3);

	this.shape_357 = new cjs.Shape();
	this.shape_357.graphics.f("#FFFFFF").s().p("An+AzQgYhKgKhOIAUhDQAtgbAsgcIBLgsQBBglA5gfQERiDAyBGQA4BuCQDFIBmB9IASAWICME/QiBgNiXAHQg+ADg2ALQj5ghh/BGQjTiDhIjwg");
	this.shape_357.setTransform(344.2,217.3);

	this.shape_358 = new cjs.Shape();
	this.shape_358.graphics.f().s("#333333").ss(1,1,1).p("AochXQALghALgiQAsgaAsgdQAmgXAkgXQA/glA5ggQEJiGAwA5QA6BuCUC9QA0A6A1A9QAJAKAKAKQBGCpBACXQh6gDiPAQQg6AHgyANQj2giiCA/QjUiAhQjoQgbhHgNhLg");
	this.shape_358.setTransform(345.7,226.5);

	this.shape_359 = new cjs.Shape();
	this.shape_359.graphics.f("#FFFFFF").s().p("An0A7QgbhHgNhLIAWhDQAsgaAsgdIBKguQA/glA5ggQEJiGAwA5QA6BuCUC9QA0A6A1A9IATAUICGFAQh6gDiPAQQg6AHgyANQj2giiCA/QjUiAhQjog");
	this.shape_359.setTransform(345.7,226.5);

	this.shape_360 = new cjs.Shape();
	this.shape_360.graphics.f().s("#333333").ss(1,1,1).p("AoYhIQAMggAMgiQArgbAsgdQAlgXAkgXQA/gnA4ghQEAiIAvArQA8BvCYC0QA1A3A3A7QAKAIAJAJQBECpA8CYQhyAHiHAZQg2ALgwAQQjygkiEA4QjVh9hYjfQgehFgRhIg");
	this.shape_360.setTransform(347.1,235.6);

	this.shape_361 = new cjs.Shape();
	this.shape_361.graphics.f("#FFFFFF").s().p("AnpBFQgehFgRhIIAYhCQArgbAsgdIBJguIB3hIQEAiIAvArQA8BvCYC0QA1A3A3A7IATARICAFBQhyAHiHAZQg2ALgwAQQjygkiEA4QjVh9hYjfg");
	this.shape_361.setTransform(347.1,235.6);

	this.shape_362 = new cjs.Shape();
	this.shape_362.graphics.f().s("#333333").ss(1,1,1).p("AoUg6QANgfANghQArgbArgeQAlgXAkgYQA9gnA3gjQD4iKAuAdQA+BwCcCrQA3A1A4A3QAKAJAKAJQBACnA5CZQhrAQh+AiQgzAOgsAUQjugliIAwQjVh6hgjWQghhFgVhEg");
	this.shape_362.setTransform(348.6,244.6);

	this.shape_363 = new cjs.Shape();
	this.shape_363.graphics.f("#FFFFFF").s().p("AneBPQghhFgVhEIAahAQArgbArgeIBJgvIB0hKQD4iKAuAdQA+BwCcCrQA3A1A4A3IAUASIB5FAQhrAQh+AiQgzAOgsAUQjugliIAwQjVh6hgjWg");
	this.shape_363.setTransform(348.6,244.6);

	this.shape_364 = new cjs.Shape();
	this.shape_364.graphics.f().s("#333333").ss(1,1,1).p("AoQgqQAOgfAOggQAqgbArgfQAkgYAjgYQA9goA2gkQDviMAtAPQBBBxCfChQA5AzA5AzQALAJAKAIQA8CnA3CaQhkAah1ArQgwASgpAXQjqgniLApQjWh3hojOQgkhCgYhBg");
	this.shape_364.setTransform(350.1,253.6);

	this.shape_365 = new cjs.Shape();
	this.shape_365.graphics.f("#FFFFFF").s().p("AnUBZQgkhCgYhBIAcg/QAqgbArgfIBHgwIBzhMQDviMAtAPQBBBxCfChIByBmIAVARIBzFBQhkAah1ArQgwASgpAXQjqgniLApQjWh3hojOg");
	this.shape_365.setTransform(350.1,253.6);

	this.shape_366 = new cjs.Shape();
	this.shape_366.graphics.f().s("#333333").ss(1,1,1).p("AoMgdQAPgdAPggQAqgcAqgfQAkgYAjgZQA7gpA1glQDniOAsACQBDBxCiCZQA8AvA6AwQALAIAKAHQA6CnAzCbQhcAlhtAzQgsAVgmAbQjpgpiLAjQjXh1hwjGQgng/gcg/g");
	this.shape_366.setTransform(351.5,262.8);

	this.shape_367 = new cjs.Shape();
	this.shape_367.graphics.f("#FFFFFF").s().p("AiCGcQjXh1hwjGQgng/gcg/IAeg9QAqgcAqgfIBHgxIBwhOQDniOAsACQBDBxCiCZQA8AvA6AwIAVAPIBtFCQhcAlhtAzQgsAVgmAbQjpgpiLAjg");
	this.shape_367.setTransform(351.5,262.8);

	this.shape_368 = new cjs.Shape();
	this.shape_368.graphics.f().s("#333333").ss(1,1,1).p("AoIgQQAPgdAQgfQAqgcAqgfQAjgZAjgZQA6gqA0gnQDhiQApgMQBFByCmCQQA+AtA7AsQALAHAKAHQA3CnAwCcQhVAuhkA8QgpAZgjAeQjlgriOAcQjYhyh4i9Qgqg9gfg8g");
	this.shape_368.setTransform(353,272);

	this.shape_369 = new cjs.Shape();
	this.shape_369.graphics.f("#FFFFFF").s().p("AhvGYQjYhyh4i9Qgpg9ghg8IAhg8QApgcAqgfIBGgyQA6gqAzgnQDiiQApgMQBFByCmCQIB5BZIAWAOIBmFDQhVAuhkA8QgpAZgjAeQjlgriOAcg");
	this.shape_369.setTransform(353,272);

	this.shape_370 = new cjs.Shape();
	this.shape_370.graphics.f().s("#333333").ss(1,1,1).p("AoEgDQAQgcARgfQAqgcApggQAjgZAigZQA6grAygoQDZiTAngZQBHByCqCHQBAArA9AoQALAGALAHQAzCnAtCcQhNA5hcBEQglAdghAhQjhgsiRAVQjYhwiAi0Qgtg6gjg6g");
	this.shape_370.setTransform(354.5,281.3);

	this.shape_371 = new cjs.Shape();
	this.shape_371.graphics.f("#FFFFFF").s().p("AhcGVQjYhwiAi0Qgtg7gjg5IAhg7QAqgbApghIBFgyQA6gsAygnQDZiTAngZQBHByCqCHIB9BTIAWANQAzCnAtCdQhNA4hcBFQglAcghAhQjhgsiRAVg");
	this.shape_371.setTransform(354.5,281.3);

	this.shape_372 = new cjs.Shape();
	this.shape_372.graphics.f().s("#333333").ss(1,1,1).p("AoAAIQARgaASgdQApgdApggQAigaAigaQA5gsAxgpQDQiVAngmQBJByCuB+QBCApA+AkQALAGAMAGQAvCmAqCeQhGBChTBOQgiAggdAkQjegtiUANQjYhsiIisQgwg4gng5g");
	this.shape_372.setTransform(355.9,290.5);

	this.shape_373 = new cjs.Shape();
	this.shape_373.graphics.f("#FFFFFF").s().p("AhJGRQjYhsiIisQgwg4gng5IAjg3QApgdApggIBEg0QA5gsAxgpQDQiVAngmQBJByCuB+ICABNIAXAMQAvCmAqCeIiZCQQgiAggdAkQjegtiUANg");
	this.shape_373.setTransform(355.9,290.5);

	this.shape_374 = new cjs.Shape();
	this.shape_374.graphics.f().s("#333333").ss(1,1,1).p("An9AVQATgZATgdQApgdApghQAhgaAhgbQA4gtAwgqQDIiXAmg0QBLBzCxB1QBEAmBAAhQAMAFALAFQAsCnAoCfQg/BLhLBXQgeAkgbAnQjZgviYAGQjZhpiPikQgzg1gsg2g");
	this.shape_374.setTransform(357.4,299.7);

	this.shape_375 = new cjs.Shape();
	this.shape_375.graphics.f("#FFFFFF").s().p("Ag2GNQjZhpiPikQgzg1gsg2IAmg2QApgcApgiIBCg1QA4gsAwgqQDIiXAlg1QBMBzCxB1QBEAnBAAgIAXALIBUFFQhABLhLBXQgdAkgbAoQjZgwiYAGg");
	this.shape_375.setTransform(357.4,299.7);

	this.shape_376 = new cjs.Shape();
	this.shape_376.graphics.f().s("#333333").ss(1,1,1).p("An5AiQAUgaAUgbQAogdAoghQAhgaAhgcQA3guAvgrQDAiZAkhCQBNBzC2BtQBGAjBBAdQALAFAMAEQApCnAkCgQg3BVhCBgQgbAngXArQjWgxiagBQjahniYibQg2gygvg0g");
	this.shape_376.setTransform(358.9,308.9);

	this.shape_377 = new cjs.Shape();
	this.shape_377.graphics.f("#FFFFFF").s().p("AgiGKQjahniYibQg2gygvg0QAUgaAUgbQAogdAoghIBDg2QA2guAvgrQDAiZAkhCQBOBzC0BtQBHAjBAAdIAZAJQAoCnAkCgQg3BVhCBgQgbAngXArQjXgxiZgBg");
	this.shape_377.setTransform(358.9,308.9);

	this.shape_378 = new cjs.Shape();
	this.shape_378.graphics.f().s("#333333").ss(1,1,1).p("An1AvQAVgZAUgaQAogeAoghQAhgbAggcQA2gvAugtQC3ibAjhPQBQB0C4BkQBJAgBCAZQAMAEAMAEQAlCnAiChQgwBfg6BoQgXArgUAuQjTgyicgIQjbhkigiTQg5gwgygxg");
	this.shape_378.setTransform(360.4,318.2);

	this.shape_379 = new cjs.Shape();
	this.shape_379.graphics.f("#FFFFFF").s().p("AgPGHQjbhlifiSQg5gwgzgxQAVgaAVgaQAngcApgjQAggaAggdQA2guAugtQC4ibAihPQBQB0C5BkQBIAgBCAZIAZAIIBHFIQgxBfg5BoQgYArgUAuQjTgyicgIg");
	this.shape_379.setTransform(360.4,318.2);

	this.shape_380 = new cjs.Shape();
	this.shape_380.graphics.f().s("#333333").ss(1,1,1).p("AnxA8QAWgZAVgbQAogbAngjQAggbAhgdQA0gvAtguQCvieAkhcQBQB0C8BbQBLAeBDAVQAMAEANADQAhCoAgCgQgqBpgwBxQgUAvgSAxQjOg0ihgOQjahiioiKQg8gug2gug");
	this.shape_380.setTransform(361.8,327.4);

	this.shape_381 = new cjs.Shape();
	this.shape_381.graphics.f("#FFFFFF").s().p("AACGEQjZhiioiKQg8gug1guQAVgZAVgbQAogbAngjQAhgbAfgdQA1gvAtguQCvieAkhcQBQB0C9BbQBKAeBDAVIAZAHIBAFIQgpBpgxBxQgUAvgRAxQjOg0iigOg");
	this.shape_381.setTransform(361.8,327.4);

	this.shape_382 = new cjs.Shape();
	this.shape_382.graphics.f().s("#333333").ss(1,1,1).p("AntBJQAXgYAXgbQAmgcAogjQAfgbAggdQA0gxArgvQCnigAjhqQBSB1DABSQBMAbBFASQANADAMACQAfCpAcChQgiBzgpB6QgQAygOA1QjLg2ikgVQjahfiwiCQg/grg6gsg");
	this.shape_382.setTransform(363.3,336.6);

	this.shape_383 = new cjs.Shape();
	this.shape_383.graphics.f("#FFFFFF").s().p("AAWGBQjahfiwiCQg/grg6gsQAXgYAXgbQAmgbAogkQAfgbAggdQA0gwArgwQCnifAjhqQBSB0DABSQBMAcBFARIAZAGQAfCoAcChQgiBzgpB6QgQAygOA0QjLg1ikgVg");
	this.shape_383.setTransform(363.3,336.6);

	this.shape_384 = new cjs.Shape();
	this.shape_384.graphics.f().s("#333333").ss(1,1,1).p("AnpBWQAYgXAXgbQAmgdAngiQAfgbAggfQAygxArgwQCfiiAhh4QBVB1DDBKQBPAYBFAOQAOACANADQAbCoAZCiQgbB9ggCCQgNA3gKA3QjIg3ingdQjbhci4h5QhBgog+gqg");
	this.shape_384.setTransform(364.8,345.8);

	this.shape_385 = new cjs.Shape();
	this.shape_385.graphics.f("#FFFFFF").s().p("AApF9Qjbhci4h5QhBgpg+goIAwgzQAlgdAngiQAfgbAggeQAzgxAqgxQCfiiAhh4QBVB2DDBJQBPAZBFANIAaAEIA0FKQgaB+ggCDQgNA1gLA4QjHg4ingcg");
	this.shape_385.setTransform(364.8,345.8);

	this.shape_386 = new cjs.Shape();
	this.shape_386.graphics.f().s("#333333").ss(1,1,1).p("AnlBjQAYgWAZgaQAmgeAmgiQAfgcAfgfQAygyApgyQCXikAgiFQBWB1DHBBQBRAWBHALQAOABANABQAXCpAWCiQgTCHgXCMQgKA5gHA7QjEg5iqgjQjbhajAhwQhFgmhBgng");
	this.shape_386.setTransform(366.2,355);

	this.shape_387 = new cjs.Shape();
	this.shape_387.graphics.f("#FFFFFF").s().p("AA8F6QjbhajAhwQhEgmhBgnQAXgWAZgaQAmgeAngiQAegcAfgfQAygyAqgyQCWikAgiFQBWB1DHBBQBRAWBHALIAbACIAuFLQgUCHgXCMQgKA5gHA7QjEg5iqgjg");
	this.shape_387.setTransform(366.2,355);

	this.shape_388 = new cjs.Shape();
	this.shape_388.graphics.f().s("#333333").ss(1,1,1).p("AnhBxQAagWAZgaQAlgeAngjQAegbAeggQAxgzApgzQCOimAeiUQBZB2DLA5QBTAUBIAFQAOABAOABQAUCoATCkQgMCRgPCUQgGA9gFA/QjAg7itgqQjchXjIhpQhHgjhFgjg");
	this.shape_388.setTransform(367.7,364.3);

	this.shape_389 = new cjs.Shape();
	this.shape_389.graphics.f("#FFFFFF").s().p("ABPF3QjchYjIhnIiMhHQAagXAZgZQAlgeAngjQAegcAegfQAxgzApgzQCOinAeiTQBZB3DLA4QBTATBIAHIAcABIAnFMQgMCRgPCUIgLB7QjAg6itgqg");
	this.shape_389.setTransform(367.7,364.3);

	this.shape_390 = new cjs.Shape();
	this.shape_390.graphics.f().s("#333333").ss(1,1,1).p("AndB9QAbgVAagZQAlgeAmglQAdgaAeggQAxg0Ang1QCGioAdihQBbB3DPAvQBVARBJADQAOAAAOAAQARCoAQClQgECbgHCdQgCBAgCBCQi8g8iwgyQjdhUjQhfQhKghhJgig");
	this.shape_390.setTransform(369.1,373.5);

	this.shape_391 = new cjs.Shape();
	this.shape_391.graphics.f("#FFFFFF").s().p("ABjFzQjdhUjQhfIiThDQAbgVAagZQAlgeAmglQAdgaAeggQAxg0Ang1QCGioAdihQBbB3DPAvQBVARBJADIAcAAIAhFNQgECbgHCdIgECCQi8g8iwgyg");
	this.shape_391.setTransform(369.1,373.5);

	this.shape_392 = new cjs.Shape();
	this.shape_392.graphics.f().s("#333333").ss(1,1,1).p("AndCKQAbgUAcgZQAlgeAlgmQAdgaAdghQAwg1Alg1QB+irAdiuQBdB3DSAmQBYAPBKgCQAOAAAOgBQAOCpANClQADClACCmQABBEACBFQi5g+izg5QjdhRjZhXQhMgehNgfg");
	this.shape_392.setTransform(371,382.7);

	this.shape_393 = new cjs.Shape();
	this.shape_393.graphics.f("#FFFFFF").s().p("AByFvQjdhQjZhYIiZg9QAcgUAbgYQAkgfAmgmQAdgaAdghQAwg0Alg2QB/irAbiuQBeB3DSAnQBXAOBKgCIAegBIAaFOIAFFLIACCJQi4g+izg5g");
	this.shape_393.setTransform(371,382.7);

	this.shape_394 = new cjs.Shape();
	this.shape_394.graphics.f().s("#333333").ss(1,1,1).p("AhEnsQBfB7DVAeQBrAOBYgKIAyM8IvJlUQBag+BhhuQDDjhAij4g");
	this.shape_394.setTransform(373.6,391.7);

	this.shape_395 = new cjs.Shape();
	this.shape_395.graphics.f("#FFFFFF").s().p("AnkCZQBag+BhhuQDDjhAij4QBfB7DVAeQBrAOBYgKIAyM8g");
	this.shape_395.setTransform(373.6,391.7);

	this.shape_396 = new cjs.Shape();
	this.shape_396.graphics.f().s("#333333").ss(1,1,1).p("AnkB1QBfg+BnhsQCQibBFilQAchBANhDQBjCBDVAmQBrAUBZgEIAJBTIgGLoIhGgUg");
	this.shape_396.setTransform(375.1,410.6);

	this.shape_397 = new cjs.Shape();
	this.shape_397.graphics.f("#FFFFFF").s().p("AGZHlIt9lwQBfg+BnhsQCQibBFilQAchBANhDQBjCBDVAnQBrATBZgEIAJBUIgGLng");
	this.shape_397.setTransform(375.1,410.6);

	this.shape_398 = new cjs.Shape();
	this.shape_398.graphics.f().s("#333333").ss(1,1,1).p("An6BSQBlg+BrhqQCZiYBRiiQAdg5ARg8QBoCGDUAvQBrAZBaACIAMBVIg3LmIhIgQg");
	this.shape_398.setTransform(378.8,429.5);

	this.shape_399 = new cjs.Shape();
	this.shape_399.graphics.f("#FFFFFF").s().p("AF8H2It2mkQBlg+BrhqQCZiYBRiiQAdg5ARg8QBoCGDUAvQBrAZBaACIAMBVIg3Lmg");
	this.shape_399.setTransform(378.8,429.5);

	this.shape_400 = new cjs.Shape();
	this.shape_400.graphics.f().s("#333333").ss(1,1,1).p("AoRAuQBqg8BxhqQChiVBcifQAhgxAUg0QBsCKDTA5QBsAdBaAJIARBWIhqLkIhKgMg");
	this.shape_400.setTransform(382.5,448.4);

	this.shape_401 = new cjs.Shape();
	this.shape_401.graphics.f("#FFFFFF").s().p("AFeIGItvnYQBqg8BxhqQChiVBcifQAhgxAUg0QBsCKDTA5QBsAdBaAJIARBWIhqLkg");
	this.shape_401.setTransform(382.5,448.4);

	this.shape_402 = new cjs.Shape();
	this.shape_402.graphics.f().s("#333333").ss(1,1,1).p("AonALQBwg9B1hnQCpiTBoibQAjgqAWgsQByCPDTBCQBsAjBbAOIAUBXIicLiIhLgIg");
	this.shape_402.setTransform(386.2,467.3);

	this.shape_403 = new cjs.Shape();
	this.shape_403.graphics.f("#FFFFFF").s().p("AFBIWItooLQBwg9B1hnQCpiTBoibQAjgqAWgsQByCPDTBCQBsAiBbAPIAUBXIicLig");
	this.shape_403.setTransform(386.2,467.3);

	this.shape_404 = new cjs.Shape();
	this.shape_404.graphics.f().s("#333333").ss(1,1,1).p("Ao+gXQB1g/B7hlQCxiPB0iZQAmgiAZgkQB2CUDSBKQBsAoBcAVIAZBYIjPLgIhNgEg");
	this.shape_404.setTransform(390,486.1);

	this.shape_405 = new cjs.Shape();
	this.shape_405.graphics.f("#FFFFFF").s().p("AEjImItho9QB1g/B7hlQCxiPB0iZQAmgiAZgkQB2CUDSBKQBsAoBcAVIAZBYIjPLgg");
	this.shape_405.setTransform(390,486.1);

	this.shape_406 = new cjs.Shape();
	this.shape_406.graphics.f().s("#333333").ss(1,1,1).p("ApUg7QB6g+CAhjQC5iMCAiWQAmgbAegcQB7CZDSBTQBrAtBeAbIAcBaIkBLeIhOAAg");
	this.shape_406.setTransform(393.7,505);

	this.shape_407 = new cjs.Shape();
	this.shape_407.graphics.f("#FFFFFF").s().p("AEGI2ItapxQB6g+CAhjQC5iMCAiWQAmgbAegdQB7CZDSBUQBrAtBeAbIAcBZIkBLeg");
	this.shape_407.setTransform(393.7,505);

	this.shape_408 = new cjs.Shape();
	this.shape_408.graphics.f().s("#333333").ss(1,1,1).p("AprhhQCAg+CFhhQDCiKCLiSQApgTAhgVQCACeDRBcQBrAyBfAhIAgBbIk0LdIhQAEg");
	this.shape_408.setTransform(397.4,524.1);

	this.shape_409 = new cjs.Shape();
	this.shape_409.graphics.f("#FFFFFF").s().p("AprhhQCAg+CFhgQDCiKCLiTQApgTAhgUQCACdDRBdQBrAxBfAiIAgBbIk0LcIhQAEg");
	this.shape_409.setTransform(397.4,524.1);

	this.shape_410 = new cjs.Shape();
	this.shape_410.graphics.f().s("#333333").ss(1,1,1).p("AqBiHQCFg+CKheQDKiHCWiPQAsgMAlgNQCECjDQBlQBsA3BfAoIAkBcIlmLaIhRAIg");
	this.shape_410.setTransform(401.2,543.2);

	this.shape_411 = new cjs.Shape();
	this.shape_411.graphics.f("#FFFFFF").s().p("AqBiHQCFg+CKheQDKiHCWiPQAsgMAlgNQCECjDQBlQBsA3BfAoIAkBcIlmLaIhRAIg");
	this.shape_411.setTransform(401.2,543.2);

	this.shape_412 = new cjs.Shape();
	this.shape_412.graphics.f().s("#333333").ss(1,1,1).p("AqYisQCLg/CPhbQDSiFCjiMQAugDAogGQCICnDQBvQBsA8BgAtIAoBeImYLYIhUAMg");
	this.shape_412.setTransform(404.9,562.3);

	this.shape_413 = new cjs.Shape();
	this.shape_413.graphics.f("#FFFFFF").s().p("AqYisQCLg+CPhcQDSiFCjiLQAugFAogFQCICnDQBvQBsA8BgAtIAoBeImYLZIhUALg");
	this.shape_413.setTransform(404.9,562.3);

	this.shape_414 = new cjs.Shape();
	this.shape_414.graphics.f().s("#333333").ss(1,1,1).p("AqujPQCQg+CUhaQDaiCCuiIQAxAEArACQCNCsDPB4QBsBBBiA0IArBeInKLXIhVAPg");
	this.shape_414.setTransform(408.6,581.1);

	this.shape_415 = new cjs.Shape();
	this.shape_415.graphics.f("#FFFFFF").s().p("AqujPQCQg+CUhaQDaiCCuiIIBcAFQCNCtDPB4QBsBBBiA0IArBeInKLWIhVAQg");
	this.shape_415.setTransform(408.6,581.1);

	this.shape_416 = new cjs.Shape();
	this.shape_416.graphics.f().s("#333333").ss(1,1,1).p("ArFjtQCWg+CZhYQDih/C4iFQA2ALAuAKQCRCxDOCBQBtBGBiA6IAwBgIn9LUIhXAUg");
	this.shape_416.setTransform(412.4,599.4);

	this.shape_417 = new cjs.Shape();
	this.shape_417.graphics.f("#FFFFFF").s().p("ArFjtQCWg+CZhYQDih/C4iFIBkAVQCRCxDOCBQBtBGBiA6IAwBgIn9LUIhXAUg");
	this.shape_417.setTransform(412.4,599.4);

	this.shape_418 = new cjs.Shape();
	this.shape_418.graphics.f().s("#333333").ss(1,1,1).p("ArbkMQCbg+CehVQDrh8DDiCQA4ATAyARQCWC3DNCJQBtBLBjBAIAzBhIovLTIhYAYg");
	this.shape_418.setTransform(416.1,617.7);

	this.shape_419 = new cjs.Shape();
	this.shape_419.graphics.f("#FFFFFF").s().p("ArbkMQCbg+CehVQDrh8DDiCIBqAkQCWC3DNCJQBtBLBjBAIAzBhIovLTIhYAYg");
	this.shape_419.setTransform(416.1,617.7);

	this.shape_420 = new cjs.Shape();
	this.shape_420.graphics.f().s("#333333").ss(1,1,1).p("ArykqQChg+CjhUQDzh4DPh+QA7AaA1AZQCaC7DMCSQBtBRBkBGIA4BiIpiLRIhaAcg");
	this.shape_420.setTransform(419.8,636.1);

	this.shape_421 = new cjs.Shape();
	this.shape_421.graphics.f("#FFFFFF").s().p("ArykqQChg+CjhTQDzh5DPh/QA7AaA1AaQCaC7DMCSQBtBRBkBGIA4BiIpiLRIhaAbg");
	this.shape_421.setTransform(419.8,636.1);

	this.shape_422 = new cjs.Shape();
	this.shape_422.graphics.f().s("#333333").ss(1,1,1).p("AsIlIQClg+CphRQD7h2Dah7QA+AhA4AhQCfDADMCbQBtBWBlBMIA7BkIqULOIhcAgg");
	this.shape_422.setTransform(423.6,654.4);

	this.shape_423 = new cjs.Shape();
	this.shape_423.graphics.f("#FFFFFF").s().p("AsIlIQClg+CphRQD7h2Dah7QA+AhA4AhQCfDADMCbQBtBWBlBMIA7BkIqULOIhcAgg");
	this.shape_423.setTransform(423.6,654.4);

	this.shape_424 = new cjs.Shape();
	this.shape_424.graphics.f().s("#333333").ss(1,1,1).p("AsflmQCsg+CthPQEEhzDmh4QBAApA7AoQCjDGDMCkQBtBbBmBSIA/BlIrHLMIhbAkg");
	this.shape_424.setTransform(427.3,672.7);

	this.shape_425 = new cjs.Shape();
	this.shape_425.graphics.f("#FFFFFF").s().p("AsflmQCsg+CthPQEEhzDmh4IB7BRQCjDGDMCkQBtBbBmBSIA/BlIrHLMIhbAkg");
	this.shape_425.setTransform(427.3,672.7);

	this.shape_426 = new cjs.Shape();
	this.shape_426.graphics.f().s("#333333").ss(1,1,1).p("As1mEQCwg+CzhNQEMhxDxh0QBDAxA/AvQCnDLDLCtQBtBgBnBYIBDBlIr5LMIhdAog");
	this.shape_426.setTransform(431,691);

	this.shape_427 = new cjs.Shape();
	this.shape_427.graphics.f("#FFFFFF").s().p("As1mEQCwg+CzhNQEMhxDxh0ICCBgQCnDLDLCtIDUC5IBDBkIr5LMIhdAog");
	this.shape_427.setTransform(431,691);

	this.shape_428 = new cjs.Shape();
	this.shape_428.graphics.f().s("#333333").ss(1,1,1).p("AtMmiQC2g+C4hLQEUhuD9hxQBGA5BCA3QCsDPDKC2QBtBlBoBfIBHBlIsrLLIhfAsg");
	this.shape_428.setTransform(434.7,709.3);

	this.shape_429 = new cjs.Shape();
	this.shape_429.graphics.f("#FFFFFF").s().p("AtMmiQC2g+C4hLQEUhuD9hxICIBwQCsDPDKC2IDVDEIBHBlIsrLLIhfAsg");
	this.shape_429.setTransform(434.7,709.3);

	this.shape_430 = new cjs.Shape();
	this.shape_430.graphics.f().s("#333333").ss(1,1,1).p("AtinBQC7g9C9hIQEchsEJhuQBIBABFBAQCxDUDJC+QBtBqBqBmIBKBmItdLJIhhAwg");
	this.shape_430.setTransform(438.5,727.7);

	this.shape_431 = new cjs.Shape();
	this.shape_431.graphics.f("#FFFFFF").s().p("AtinBQC7g9C9hJQEchrEJhuQBIBABFA/QCxDVDJC/IDXDPIBKBmItdLJIhhAwg");
	this.shape_431.setTransform(438.5,727.7);

	this.shape_432 = new cjs.Shape();
	this.shape_432.graphics.f().s("#333333").ss(1,1,1).p("At5nfQDBg9DChHQEkhoEVhqQBLBHBIBHQC1DZDIDIQBuBvBqBrIBPBoIuOLHIhlAzg");
	this.shape_432.setTransform(442.2,746);

	this.shape_433 = new cjs.Shape();
	this.shape_433.graphics.f("#FFFFFF").s().p("At5nfQDBg9DChHQEkhoEVhqQBLBHBIBHQC1DZDIDIIDYDaIBPBoIuOLHIhlAzg");
	this.shape_433.setTransform(442.2,746);

	this.shape_434 = new cjs.Shape();
	this.shape_434.graphics.f().s("#333333").ss(1,1,1).p("AuPn9QDGg9DHhFQEthlEghnQBNBPBMBOQC5DeDIDRQBuB0BrByIBSBpIvALFIhmA3g");
	this.shape_434.setTransform(445.9,764.3);

	this.shape_435 = new cjs.Shape();
	this.shape_435.graphics.f("#FFFFFF").s().p("AuPn9QDGg+DHhEQEthlEghnICZCdQC5DeDIDRIDZDlIBSBpIvALGIhmA3g");
	this.shape_435.setTransform(445.9,764.3);

	this.shape_436 = new cjs.Shape();
	this.shape_436.graphics.f().s("#333333").ss(1,1,1).p("AumobQDMg+DMhBQE1hjErhkQBRBWBPBXQC9DiDIDbQBtB5BsB3IBXBrIvzLCIhoA8g");
	this.shape_436.setTransform(449.7,782.6);

	this.shape_437 = new cjs.Shape();
	this.shape_437.graphics.f("#FFFFFF").s().p("AumoaQDMg+DMhCQE1hjErhkICgCtQC9DjDIDaIDZDwIBXBrIvzLCIhoA8g");
	this.shape_437.setTransform(449.7,782.6);

	this.shape_438 = new cjs.Shape();
	this.shape_438.graphics.f().s("#333333").ss(1,1,1).p("Au8o5QDRg9DRhAQE9hgE4hhQBSBeBTBeQDCDoDGDjQBuB+BtB8IBaBtIwlLBIhpBAg");
	this.shape_438.setTransform(453.4,800.9);

	this.shape_439 = new cjs.Shape();
	this.shape_439.graphics.f("#FFFFFF").s().p("Au8o5QDRg9DRhAQE9hgE4hhIClC8QDCDoDGDjIDbD6IBaBtIwlLBIhpBAg");
	this.shape_439.setTransform(453.4,800.9);

	this.shape_440 = new cjs.Shape();
	this.shape_440.graphics.f().s("#333333").ss(1,1,1).p("AvTpXIQ1k2INyQYIzDMDg");
	this.shape_440.setTransform(457.1,819.3);

	this.shape_441 = new cjs.Shape();
	this.shape_441.graphics.f("#FFFFFF").s().p("AvTpXIQ1k1INyQXIzDMDg");
	this.shape_441.setTransform(457.1,819.3);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_315},{t:this.shape_314}]}).to({state:[{t:this.shape_317},{t:this.shape_316}]},1).to({state:[{t:this.shape_319},{t:this.shape_318}]},1).to({state:[{t:this.shape_321},{t:this.shape_320}]},1).to({state:[{t:this.shape_323},{t:this.shape_322}]},1).to({state:[{t:this.shape_325},{t:this.shape_324}]},1).to({state:[{t:this.shape_327},{t:this.shape_326}]},1).to({state:[{t:this.shape_329},{t:this.shape_328}]},1).to({state:[{t:this.shape_331},{t:this.shape_330}]},1).to({state:[{t:this.shape_333},{t:this.shape_332}]},1).to({state:[{t:this.shape_335},{t:this.shape_334}]},1).to({state:[{t:this.shape_337},{t:this.shape_336}]},1).to({state:[{t:this.shape_339},{t:this.shape_338}]},1).to({state:[{t:this.shape_341},{t:this.shape_340}]},1).to({state:[{t:this.shape_343},{t:this.shape_342}]},1).to({state:[{t:this.shape_345},{t:this.shape_344}]},1).to({state:[{t:this.shape_347},{t:this.shape_346}]},1).to({state:[{t:this.shape_349},{t:this.shape_348}]},1).to({state:[{t:this.shape_351},{t:this.shape_350}]},1).to({state:[{t:this.shape_353},{t:this.shape_352}]},1).to({state:[{t:this.shape_355},{t:this.shape_354}]},1).to({state:[{t:this.shape_357},{t:this.shape_356}]},1).to({state:[{t:this.shape_359},{t:this.shape_358}]},1).to({state:[{t:this.shape_361},{t:this.shape_360}]},1).to({state:[{t:this.shape_363},{t:this.shape_362}]},1).to({state:[{t:this.shape_365},{t:this.shape_364}]},1).to({state:[{t:this.shape_367},{t:this.shape_366}]},1).to({state:[{t:this.shape_369},{t:this.shape_368}]},1).to({state:[{t:this.shape_371},{t:this.shape_370}]},1).to({state:[{t:this.shape_373},{t:this.shape_372}]},1).to({state:[{t:this.shape_375},{t:this.shape_374}]},1).to({state:[{t:this.shape_377},{t:this.shape_376}]},1).to({state:[{t:this.shape_379},{t:this.shape_378}]},1).to({state:[{t:this.shape_381},{t:this.shape_380}]},1).to({state:[{t:this.shape_383},{t:this.shape_382}]},1).to({state:[{t:this.shape_385},{t:this.shape_384}]},1).to({state:[{t:this.shape_387},{t:this.shape_386}]},1).to({state:[{t:this.shape_389},{t:this.shape_388}]},1).to({state:[{t:this.shape_391},{t:this.shape_390}]},1).to({state:[{t:this.shape_393},{t:this.shape_392}]},1).to({state:[{t:this.shape_395},{t:this.shape_394}]},1).to({state:[{t:this.shape_397},{t:this.shape_396}]},1).to({state:[{t:this.shape_399},{t:this.shape_398}]},1).to({state:[{t:this.shape_401},{t:this.shape_400}]},1).to({state:[{t:this.shape_403},{t:this.shape_402}]},1).to({state:[{t:this.shape_405},{t:this.shape_404}]},1).to({state:[{t:this.shape_407},{t:this.shape_406}]},1).to({state:[{t:this.shape_409},{t:this.shape_408}]},1).to({state:[{t:this.shape_411},{t:this.shape_410}]},1).to({state:[{t:this.shape_413},{t:this.shape_412}]},1).to({state:[{t:this.shape_415},{t:this.shape_414}]},1).to({state:[{t:this.shape_417},{t:this.shape_416}]},1).to({state:[{t:this.shape_419},{t:this.shape_418}]},1).to({state:[{t:this.shape_421},{t:this.shape_420}]},1).to({state:[{t:this.shape_423},{t:this.shape_422}]},1).to({state:[{t:this.shape_425},{t:this.shape_424}]},1).to({state:[{t:this.shape_427},{t:this.shape_426}]},1).to({state:[{t:this.shape_429},{t:this.shape_428}]},1).to({state:[{t:this.shape_431},{t:this.shape_430}]},1).to({state:[{t:this.shape_433},{t:this.shape_432}]},1).to({state:[{t:this.shape_435},{t:this.shape_434}]},1).to({state:[{t:this.shape_437},{t:this.shape_436}]},1).to({state:[{t:this.shape_439},{t:this.shape_438}]},1).to({state:[{t:this.shape_441},{t:this.shape_440}]},1).to({state:[]},1).wait(62));

	// 晕
	this.shape_442 = new cjs.Shape();
	this.shape_442.graphics.f().s("#333333").ss(2,1,1).p("AgfkVIg9gjIgfA3Qhcgqh3gOIgIAPIgEAHIgIANIApApIhPAGIDdC0QgoACgpAPIgZApQAtCqDnAGQgKglgWgYICGAvIgUgZIAVAVQABhFglgyIgHgFIABgCIADgEIBSBOIAPgaQgMgqgQgmIgbgqQAAgGABgEQABgHAAgFIAHAFICOBxIAAAAQADgsgJgiIhmheIgUgSIAggCIADgGQgSgLgWgKIg+gvQgjgpg5gfQgQAbgLAXQgBACAAABQgGALgEAJQgJAVgEAPIC7CFIADgGIAGgLAg6jjQgHgCgHgCQgUgEgUgEIArAjICgCFQg7hehbg7QgGgDgHgEQgYgOgbgMIgEAGIAPAMQg/gKg8AFIgnAEIgVABIgSACIDAC8IAhAhIBzBwIADgDIADgGIhrh+IgKAQIgEAHIgMAUIgLASIBxBCIAXANIACgFIBKBJQABgBAAgCIC9DBIAeg0Ii9ksQgLgZgNgXQgBgDgBgBQgHgNgIgNIAQAOQADgegFgaQgBgIgCgIQgFgTgKgSIgNgMQgTgJgTgIIApAwIgMAUIAcgBIAJgBIAaAAIgpglIgKATIAQATIAMAPICXCuIB1CJIAohFIijiSQgShMhFgsABTiuQgJgQgNgPIhchIABTiuQgEgCgFgCIhphjIBDBSQgvgUgvgMABairQgEgBgDgCABXimQgCgEgCgEABairIgDAFACgiDIglgbQgPgHgSgGACUhvIAMgUIhGgoAAAgJQgggSgqgMQgRgFgRgDQgGgCgHAAQgZgEgZACIBHA3IBmBUIBjBRQAAgCABgCIAAABQAUggAXgVIhPhDQgDgDgDgEQgYgcgkgUIkSjnIhEg6IhGg8IBCBDIAzA0IC7DAIAYAYIByB0IAzAzIgwg5AA7ApIg7gyAjrj0IEqEXAghB6QgrguhYABg");
	this.shape_442.setTransform(252.8,258.4);

	this.shape_443 = new cjs.Shape();
	this.shape_443.graphics.f().s("#333333").ss(2,1,1).p("AhCi2IgNgOIhghgIgsgZQgoAogPABIgmBCIA/BBIAEAEQAAAFABAEIAZAcQgJAHgHAHQAOAyAZAqIgbAuICpBhQADALADALQAMgCAMgDQAOgEANgIQACgCACgBIAHgLIAEgIIAZARQAGgBAFgBQAhgGACgTQAAgCAAgCIAAgCQAEgpgNgjIgbgRQgDgSgDgPQgMgzgZgoIhKhMIgBgBIgBAAIhRAVIhjANQAAADABAEACIgDIAqhJQhxisiQA0QghAMgjAXQg4gMgrAZQgCABgBACQgCABgCADIAJAJQAEAWAFAUQghAfgVAgIBCBLQBXCABYgJQAzCKDZBcIAhhgIAJgPIAzhZIgsgsIgUgNQgEgHgDgGIgKgLIAAgBQAAgEABgDQghg7hAg0QgmghgwgdQgBgBAAAAIgngnQgbgugvgeAB/ALIAJgOADcB6IAMgGIhphpIhNhMAgpgnIgBAAIgBAAQgLAfgFAcQAAABAAACQgFAWAAAVQAAABAAABQAAACAAACQAAARACARIA6AhIALAIQALAAAJAAQAIgBAIgBIAsAiIghgkIgVgWIgHgHIACgEIhXhaIhAg/QgEAUgCAQQAAADgBADQgCAHgBAKQgEAcgCASIBNAsQADATAEATQAAAAABABQAAAAAAAAIAOAIQABABADACIAMAGIAsAHIAnAGIAcAEIAMAIIAmgUIBTgtIiMhWQgLgdgWgVQgugxhcghQgFgCgFgCQgCACgBAAQgaAdgEAeQgBAPAGARQADAGACAFIAuA0IAOAQIA8BDIAHALIARATIAkApIAcgOIANgIIACgBIBpBOIAxAkIgqgwIAwhSIAKgSIgbgaQgEgLgFgIQAOlxlqiHIhoBPIhdBrIA7BFQhBBMAqBEQAbAwAagDAhOA4IAOAKIBSA+IAIgOIhVhbIhAhCQgGACgFACQgMADgKAEIAaAfIAGAFQAOAZAgAbIAOAMIBOBEIANALIAgAcIAZAVIBrBcIANgXIAHgMIhKhWIgwg3IglgrIAFgJQgBgVgDgUIheg6AAhB5IgFgLIAYgpIhdhsABZBwQgCgUgeggIhihjABhC8IgKgJIACg9Ag2CRQAGADAIAFAgYCiIBQAwICHBOIhehkAgYCiQAdAyAzgCICkC7QAgg5AKg2QALg8gOg3QgFgQgFgPIgdgSAAxhCQgYhKhZgpAijgnIAHAHQgRAGgKAHIgNAVQAxBTBcA7AhohiIg7A7IgUAUIAyAjIA3AoAjbhoIA4BBAiTihQgpAcgfAdAhbhgIg4hBAgrgnIg6g9AgrgnIgwg5");
	this.shape_443.setTransform(251.1,259.9);

	this.shape_444 = new cjs.Shape();
	this.shape_444.graphics.f().s("#333333").ss(2,1,1).p("AD7AdQAUg+glhPQgUgqgggkQgpgwg/gkQhKgrhIgJIgBAAQgigFgjADQhtAKgsBMQgkA+AZBOQBdHHGmgYQAegCASgjQCHkFjWjdAA0jPIgtgrIhLhMIgBgBIAAABIjpDgQAGARAHASQAvBhBtA/QBPAuBNAIIBrBjIAhg5IAQAJIBQiLQgEgPgEgPQgLghgOgfIAAgBQAAgBAAgBQhJiliSgvQgsgQg2gDQgXAggPAhQgWgLgXgJIgoBFIgeA0IBWA+QAOAkA5AwQAHAHAHAGQAYATAdAHQACAAADABIADAEIAiArIANgPIAJgNIAWgbQgDgOgEgMIhlhMQgLAKgJARIgJAPIAGAHIAyA9QAPADATgBIAZARIA8ArIA7AqIAQALQgCgPgCgQIANgWIgVgPIgDgDQAAAAACgBQARgIAPgLQAXgTAQgbQAJgPAFgRADigkQgBgBABgBQg9hnhxhCQg/glhQgZICaBaADigkIAAAAIiuirADGBrIAciOAATBVQAWgCAZgIIiAhLAgMBXIAvAcIA3AgQAHgBAHgBQAhgGAbgMIhphOQgRgvgqgeQgXgQgTARIh0hWQgBAMgBALQgBAYADAYIAAABIBWA7IAHAEIBUA/ACnCCQgBgCAAgCQg6jXjthzQgWAugHAtIg4gqIA2BBIBZBpIgBADIgPAZIBDAnIAIAFACjC9IAAgCIAMgUQgEgTgEgSABaCTIBJAqAAXCTQAeADAfgDQADAAADAAACzDGIAThbAhJA4IBgBb");
	this.shape_444.setTransform(244.4,258.5);

	this.shape_445 = new cjs.Shape();
	this.shape_445.graphics.f().s("#333333").ss(2,1,1).p("AgfkVIg9gjIgfA3Qhcgqh3gOIgIAPIgEAHIgIANIApApIhPAGIDdC0QgoACgpAPIgZApQAtCqDnAGQgKglgWgYICGAvIgUgZIAVAVQABhFglgyQgDgDgDgEIADgEIBSBOIhPhDIgHgFIABgCQgYgcgkgUQgggSgqgMIgKAQIgEAHIBzBwIADgDIADgGIhrh+QgRgFgRgDIAYAYIByB0IAzAzIgwg5AhFjMQgJAVgEAPIC7CFQAAgGABgEQABgHAAgFIAHAFICOBxIAAAAQADgsgJgiIhmheIAMgUIglgbQgPgHgSgGQgEgBgDgCQgJgQgNgPIhchIQgQAbgLAXQgBACAAABQgGgDgHgEQgUgEgUgEQg/gKg8AFIgnAEIgVABIgSACIDAC8QgZgEgZACIBHA3IgLASIBxBCIAXANIACgFIBKBJQABgBAAgCIC9DBIAeg0Ii9ksQgLgZgNgXQgBgDgBgBQgHgNgIgNIAQAOQADgegFgaQgBgIgCgIQgFgTgKgSIgKATIgMAUIAcgBIAJgBIAaAAIAggCIADgGQgSgLgWgKIg+gvQgjgpg5gfIBDBSIApAwIAQATIAMAPICXCuIB1CJIAohFIijiSQgShMhFgsAg6jjQgHgCgHgCQgYgOgbgMIgEAGIAPAMIArAjICgCFQg7hehbg7QgGALgEAJABTiuQgEgCgFgCQgTgJgTgIQgvgUgvgMABXimIgNgMIhphjABairIgDAFQgCgEgCgEACUhvIgUgSIgpglACgiDIhGgoABpgjIADgGIAGgLACEAHIgbgqACRBxIAPgaQgMgqgQgmAA7ApIg7gyIkSjnIhEg6IhGg8IBCBDIAzA0IC7DAQgGgCgHAAIAhAhIgMAUIBmBUIBjBRQAAgCABgCIAAABQAUggAXgVAghB6QgrguhYABgAjrj0IEqEX");
	this.shape_445.setTransform(252.8,258.4);

	this.shape_446 = new cjs.Shape();
	this.shape_446.graphics.f().s("#333333").ss(2,1,1).p("AhAi1IgBgBIgBAAIgNgOIhghgIgsgZQgoAogPABIgmBCIA/BBQgCABgCADIAJAJQAEAWAFAUQAOAyAZAqIgbAuQBXCABYgJQAMgCAMgDQAOgEANgIQACgCACgBIAHgLIAEgIIAZARQAGgBAFgBIgVgWIgHgHIACgEIAYgpIAFgJQgBgVgDgUIheg6IgBAAIgBAAQgLAfgFAcQAAABAAACQgFAWAAAVQAAABAAABQAAACAAACQAAARACARIA6AhIALAIQALAAAJAAQAIgBAIgBIAsAiIghgkQAhgGACgTQAAgCAAgCQAAgBAAgBQAEgpgNgjIgbgRQgDgSgDgPQgMgzgZgoQgbgugvgegACIgDIAqhJQhxisiQA0QghAMgjAXQg4gMgrAZQgCABgBACIAEAEQAAAFABAEIAZAcQgJAHgHAHQghAfgVAgIBCBLICpBhIAOAIQABABADACIAMAGQAdAyAzgCICHBOIhehkIACgBIBpBOIAHgMIAwhSIAKgSIgbgaQgEgLgFgIQghg7hAg0QgmghgwgdIgBgBIgngnIhKhMADoB0IAAgBQAAgEABgDQAOlxlqiHIhoBPIhdBrIA7BFQhBBMAqBEQAbAwAagDAB/ALIAJgOADcB6IAMgGIhphpIhNhMAhOA4IAOAQIA8BDIAHALIARATIAnAGIAZAVIANgIIgKgJIAMAIIAmgUIgwg3QgCgUgeggIhihjAhOA4IAOAKIBSA+IAIgOIhVhbIhAhCQgEAUgCAQQAAADgBADIAGAFQAOAZAgAbIAOAMIBOBEIANALIAgAcIAcAEIACg9AAhB5IgFgLIhXhaIhAg/QgGACgFACQgMADgKAEIAaAfQgCAHgBAKQgEAcgCASIBNAsQADATAEATIABABQAAAAAAAAQADALADALQAzCKDZBcQAgg5AKg2IAzhZIgsgsIgUgNQgEgHgDgGIgKgLABZBwIglgrIhdhsABQAkQgLgdgWgVQgugxhcghQgFgCgFgCQgCACgBAAIg7A7IAHAHQgRAGgKAHIAyAjIA3AoAAUCpIAkApIAcgOIBrBcIANgXIAxAkIgqgwIhKhWIBTgtIiMhWAg2CRQAGADAIAFAgYCiIBQAwICkC7IAhhgIAJgPQALg8gOg3QgFgQgFgPIgdgSAgYCiIAsAHAAxhCQgYhKhZgpAj2iUQAAADABAEAiTihIhjANAiGgnQgBAPAGARQADAGACAFIAuA0AhohiQgaAdgEAeAjbhoIA4BBIgUAUIgNAVQAxBTBcA7AhbhgIg4hBQgpAcgfAdAgrgnIgwg5AgrgnIg6g9AhCi2IhRAV");
	this.shape_446.setTransform(251.1,259.9);

	this.shape_447 = new cjs.Shape();
	this.shape_447.graphics.f().s("#333333").ss(2,1,1).p("AD7AdQAUg+glhPQgUgqgggkQgpgwg/gkQhKgrhIgJIgBAAQgigFgjADQhtAKgsBMQgkA+AZBOQBdHHGmgYQAegCASgjQCHkFjWjdAA0jPIgtgrIhLhMIgBgBIAAABIjpDgQAGARAHASQAvBhBtA/QBPAuBNAIIBrBjIAhg5IAQAJIBQiLQgEgPgEgPQgLghgOgfIAAgBQAAgBAAgBQg9hnhxhCQg/glhQgZQgXAggPAhQgWgLgXgJIgoBFIgeA0IBWA+IBWA7IAHAEIAyA9IADAEIAiArIANgPIAJgNIAWgbQgDgOgEgMIhlhMQgLAKgJARIgJAPIAGAHIBUA/IAZARIA8ArIA7AqIAQALQgCgPgCgQIANgWIgVgPIgDgDQAAAAACgBQARgIAPgLQAXgTAQgbQAJgPAFgRADigkQgBgBABgBQhJiliSgvQgsgQg2gDICaBaADigkIAAAAIiuirADGBrIAciOAgMBXIAvAcIA3AgQAHgBAHgBQAhgGAbgMIhphOQgRgvgqgeQgXgQgTARIh0hWQgBAMgBALQgBAYADAYIAAABQAOAkA5AwQAHAHAHAGQAYATAdAHQACAAADABQAPADATgBQAWgCAZgIIiAhLACnCCQgBgCAAgCQg6jXjthzQgWAugHAtIg4gqIA2BBIBZBpIgBADIgPAZIBDAnIAIAFACjC9IAAgCIAMgUQgEgTgEgSABaCTIBJAqAAXCTQAeADAfgDQADAAADAAACzDGIAThbAhJA4IBgBb");
	this.shape_447.setTransform(244.4,258.5);

	this.instance = new lib.Symbol5();
	this.instance.setTransform(266.1,276.1,0.374,0.374,15,0,0,46.1,50.5);
	this.instance._off = true;

	this.timeline.addTween(cjs.Tween.get({}).to({state:[]}).to({state:[{t:this.shape_442}]},69).to({state:[{t:this.shape_443}]},3).to({state:[{t:this.shape_444}]},3).to({state:[{t:this.shape_445}]},3).to({state:[{t:this.shape_446}]},3).to({state:[{t:this.shape_447}]},3).to({state:[]},3).to({state:[{t:this.instance}]},6).to({state:[{t:this.instance}]},6).to({state:[{t:this.instance}]},18).to({state:[{t:this.instance}]},6).to({state:[]},1).wait(2));
	this.timeline.addTween(cjs.Tween.get(this.instance).wait(93).to({_off:false},0).to({regY:50.6,scaleX:1,scaleY:1,x:300.7,y:273.2},6).wait(18).to({regY:50.5,scaleX:0.37,scaleY:0.37,x:266.1,y:276.1},6).to({_off:true},1).wait(2));

	// 喘气
	this.instance_1 = new lib.Symbol1();
	this.instance_1.setTransform(190,390.3,0.271,0.271,-15,0,0,26,17.7);
	this.instance_1.alpha = 0;
	this.instance_1._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_1).wait(75).to({_off:false},0).to({regY:17.6,scaleX:1,scaleY:1,rotation:-14.4,x:157.6,y:397.1,alpha:1},8,cjs.Ease.get(1)).to({regY:17.5,scaleX:1.34,scaleY:1.34,rotation:0,x:117,y:384,alpha:0},6,cjs.Ease.get(-1)).to({_off:true},1).wait(36));

	// 前
	this.instance_2 = new lib.Symbol8();
	this.instance_2.setTransform(68.1,458.5);

	this.timeline.addTween(cjs.Tween.get(this.instance_2).to({rotation:30,x:54.9,y:490.9},6).to({scaleX:1,scaleY:1,rotation:-7.8,x:72.7,y:455.5},5).to({scaleX:1,scaleY:1,rotation:30,x:54.9,y:490.9},6).to({scaleX:1,scaleY:1,rotation:-16.4,x:69.9,y:459},5).to({scaleX:1,scaleY:1,rotation:30,x:54.9,y:490.9},10).to({scaleX:1,scaleY:1,rotation:60.7,x:69.4,y:484},23).wait(18).to({scaleX:1,scaleY:1,rotation:69.9,x:72.5,y:481.2},5).to({scaleX:1,scaleY:1,rotation:23.7,x:74.4,y:493.7},6).to({scaleX:1,scaleY:1,rotation:54.9,x:71.3,y:484.9},20).wait(13).to({scaleX:1,scaleY:1,rotation:0,x:68.1,y:458.5},8).wait(1));

	// 前手
	this.shape_448 = new cjs.Shape();
	this.shape_448.graphics.f().s("#333333").ss(26,1,1).p("ANHgtQhpAiioARQlQAlk5hJQlJhNj2BRQh7Amg5A4");
	this.shape_448.setTransform(161,439.6);

	this.shape_449 = new cjs.Shape();
	this.shape_449.graphics.f().s("#333333").ss(26,1,1).p("AtNBZQA/g7CAgvQEBhiFEAzQE0AzFQghQCogPBrgb");
	this.shape_449.setTransform(160.4,443.9);

	this.shape_450 = new cjs.Shape();
	this.shape_450.graphics.f().s("#333333").ss(26,1,1).p("AtTB4QBFg+CFg5QEKhwFBAZQEtAaFQgbQCpgNBsgT");
	this.shape_450.setTransform(159.7,447.1);

	this.shape_451 = new cjs.Shape();
	this.shape_451.graphics.f().s("#333333").ss(26,1,1).p("AtZCYQBLhBCJhCQEUiAE9gCQEnACFRgWQCpgLBtgL");
	this.shape_451.setTransform(159.1,450.3);

	this.shape_452 = new cjs.Shape();
	this.shape_452.graphics.f().s("#333333").ss(26,1,1).p("AtfC4QBQhFCPhKQEeiRE4gbQEhgYFSgQQCpgIBugE");
	this.shape_452.setTransform(158.5,453.4);

	this.shape_453 = new cjs.Shape();
	this.shape_453.graphics.f().s("#333333").ss(26,1,1).p("AtmDYQBXhHCUhSQEoijE0g0QEagxFSgLQCqgFBwAE");
	this.shape_453.setTransform(157.9,456.5);

	this.shape_454 = new cjs.Shape();
	this.shape_454.graphics.f().s("#333333").ss(26,1,1).p("ANtjxQhygMipADQlTAGkUBJQkwBPkyCzQiZBahcBL");
	this.shape_454.setTransform(157.2,459.3);

	this.shape_455 = new cjs.Shape();
	this.shape_455.graphics.f().s("#333333").ss(26,1,1).p("AtkDRQBVhHCShQQEmifE2gwQEbgrFSgMQCpgGBwAC");
	this.shape_455.setTransform(158,455.9);

	this.shape_456 = new cjs.Shape();
	this.shape_456.graphics.f().s("#333333").ss(26,1,1).p("AtdCrQBOhDCNhGQEaiLE6gRQEjgOFSgSQCpgKBugG");
	this.shape_456.setTransform(158.7,452.2);

	this.shape_457 = new cjs.Shape();
	this.shape_457.graphics.f().s("#333333").ss(26,1,1).p("AtVCFQBHg/CHg9QEOh3E/APQEqAQFRgZQCpgMBsgQ");
	this.shape_457.setTransform(159.5,448.4);

	this.shape_458 = new cjs.Shape();
	this.shape_458.graphics.f().s("#333333").ss(26,1,1).p("AtOBfQBBg8CBgwQEChlFDAuQEyAtFRgfQCogPBrgZ");
	this.shape_458.setTransform(160.2,444.6);

	this.shape_459 = new cjs.Shape();
	this.shape_459.graphics.f().s("#333333").ss(26,1,1).p("AtKBOQA9g6B+grQD8hbFGA+QE2A6FQggQCogRBqge");
	this.shape_459.setTransform(160.6,442.4);

	this.shape_460 = new cjs.Shape();
	this.shape_460.graphics.f().s("#333333").ss(26,1,1).p("AtSByQBEg9CEg2QEIhvFCAeQEuAfFRgcQCogNBsgV");
	this.shape_460.setTransform(159.9,446.5);

	this.shape_461 = new cjs.Shape();
	this.shape_461.graphics.f().s("#333333").ss(26,1,1).p("AthC+QBShFCQhMQEgiVE4gfQEfgdFSgQQCpgHBvgC");
	this.shape_461.setTransform(158.4,454.1);

	this.shape_462 = new cjs.Shape();
	this.shape_462.graphics.f().s("#333333").ss(26,1,1).p("AtoDmQBYhICWhWQEsipEzg/QEYg6FSgKQCqgEBwAH");
	this.shape_462.setTransform(157.6,457.6);

	this.shape_463 = new cjs.Shape();
	this.shape_463.graphics.f().s("#333333").ss(26,1,1).p("AtnD6QBchICZhYQE4ivEdhMQAFgCAGgBQEUhLFOgJQCngFByAK");
	this.shape_463.setTransform(157.7,459.5);

	this.shape_464 = new cjs.Shape();
	this.shape_464.graphics.f().s("#333333").ss(26,1,1).p("AtjD5QBdhGCYhVQE6irEZhNQAGgCAFgBQEUhMFJgNQCmgGBxAH");
	this.shape_464.setTransform(158.1,459.6);

	this.shape_465 = new cjs.Shape();
	this.shape_465.graphics.f().s("#333333").ss(26,1,1).p("AtfD5QBehECXhUQE7imEXhOQAFgBAFgCQEUhNFFgQQCkgIBxAF");
	this.shape_465.setTransform(158.5,459.8);

	this.shape_466 = new cjs.Shape();
	this.shape_466.graphics.f().s("#333333").ss(26,1,1).p("AtbD5QBfhCCXhRQE8ijEThNQAFgCAGgBQEUhPFAgUQCigJBxAC");
	this.shape_466.setTransform(158.9,459.8);

	this.shape_467 = new cjs.Shape();
	this.shape_467.graphics.f().s("#333333").ss(26,1,1).p("AtXD5QBghACWhPQE+ieEQhOQAFgBAFgCQEUhQE8gXQCggMBxAB");
	this.shape_467.setTransform(159.4,459.9);

	this.shape_468 = new cjs.Shape();
	this.shape_468.graphics.f().s("#333333").ss(26,1,1).p("AtSD5QBgg9CWhNQE+ibENhNQAFgCAFgCQEUhRE4gbQCdgNBxgC");
	this.shape_468.setTransform(159.8,459.9);

	this.shape_469 = new cjs.Shape();
	this.shape_469.graphics.f().s("#333333").ss(26,1,1).p("AtOD5QBgg6CWhLQFAiWEJhPQAGgBAFgCQEUhTEzgeQCbgPBxgE");
	this.shape_469.setTransform(160.2,460);

	this.shape_470 = new cjs.Shape();
	this.shape_470.graphics.f().s("#333333").ss(26,1,1).p("AtKD5QBhg4CWhIQFBiTEFhOQAGgCAFgBQEUhVEughQCagRBxgG");
	this.shape_470.setTransform(160.6,460);

	this.shape_471 = new cjs.Shape();
	this.shape_471.graphics.f().s("#333333").ss(26,1,1).p("AtGD6QBig3CVhGQFCiOEDhPQAFgBAFgCQEUhWEqglQCYgSBwgJ");
	this.shape_471.setTransform(161.1,460);

	this.shape_472 = new cjs.Shape();
	this.shape_472.graphics.f().s("#333333").ss(26,1,1).p("AtBD6QBig0CVhEQFDiLD/hOQAGgCADgBQEVhYEmgoQCVgVBxgK");
	this.shape_472.setTransform(161.5,460.1);

	this.shape_473 = new cjs.Shape();
	this.shape_473.graphics.f().s("#333333").ss(26,1,1).p("As9D6QBjgyCVhBQFEiHD8hOQAFgCADgCQEWhYEhgsQCTgXBxgM");
	this.shape_473.setTransform(161.9,460.1);

	this.shape_474 = new cjs.Shape();
	this.shape_474.graphics.f().s("#333333").ss(26,1,1).p("As5D6QBkgvCUg/QFFiFD5hNQADgCAGgCQEVhaEcguQCSgZBxgP");
	this.shape_474.setTransform(162.3,460.1);

	this.shape_475 = new cjs.Shape();
	this.shape_475.graphics.f().s("#333333").ss(26,1,1).p("As1D7QBlguCUg8QFGiBD2hNQADgCAFgCQEWhbEXgyQCQgbBxgR");
	this.shape_475.setTransform(162.7,460.1);

	this.shape_476 = new cjs.Shape();
	this.shape_476.graphics.f().s("#333333").ss(26,1,1).p("AswD7QBlgrCUg6QFHh9DwhNQAGgCAFgCQEVhdETg1QCOgdBxgT");
	this.shape_476.setTransform(163.2,460.2);

	this.shape_477 = new cjs.Shape();
	this.shape_477.graphics.f().s("#333333").ss(26,1,1).p("AssD7QBmgoCTg4QFJh5DthOQAFgCAFgCQEVheEPg5QCMgeBwgV");
	this.shape_477.setTransform(163.6,460.2);

	this.shape_478 = new cjs.Shape();
	this.shape_478.graphics.f().s("#333333").ss(26,1,1).p("AsoD8QBngnCSg2QFKh1DqhNQAFgCAFgCQEWhgEKg8QCJggBxgY");
	this.shape_478.setTransform(164,460.2);

	this.shape_479 = new cjs.Shape();
	this.shape_479.graphics.f().s("#333333").ss(26,1,1).p("AskD8QBogkCSg0QFLhxDmhOQAFgCAGgBQEVhhEFhBQCIghBxga");
	this.shape_479.setTransform(164.4,460.3);

	this.shape_480 = new cjs.Shape();
	this.shape_480.graphics.f().s("#333333").ss(26,1,1).p("AsgD8QBpgiCRgxQFNhtDjhOQAFgCAFgCQEVhiEChEQCFgjBxgc");
	this.shape_480.setTransform(164.9,460.3);

	this.shape_481 = new cjs.Shape();
	this.shape_481.graphics.f().s("#333333").ss(26,1,1).p("AsbD9QBpghCRguQFOhpDfhPQAFgCAFgCQEVhjD9hHQCEgmBwge");
	this.shape_481.setTransform(165.3,460.3);

	this.shape_482 = new cjs.Shape();
	this.shape_482.graphics.f().s("#333333").ss(26,1,1).p("AsXD9QBqgeCRgsQFOhlDdhPQAFgCAFgCQEVhlD4hKQCCgnBwgh");
	this.shape_482.setTransform(165.7,460.3);

	this.shape_483 = new cjs.Shape();
	this.shape_483.graphics.f().s("#333333").ss(26,1,1).p("AsTD9QBqgbCRgrQFQhgDZhSQAFgBAFgCQEVhlD0hOQCAgpBwgi");
	this.shape_483.setTransform(166.1,460.4);

	this.shape_484 = new cjs.Shape();
	this.shape_484.graphics.f().s("#333333").ss(26,1,1).p("AsPD+QBrgaCQgnQFRhdDXhSQAFgCAFgCQEUhmDwhRQB9gqBwgl");
	this.shape_484.setTransform(166.6,460.4);

	this.shape_485 = new cjs.Shape();
	this.shape_485.graphics.f().s("#333333").ss(26,1,1).p("AMLj9QlIBymtCiQjTBRk8BTQieAqhzAZ");
	this.shape_485.setTransform(167,460.4);

	this.shape_486 = new cjs.Shape();
	this.shape_486.graphics.f().s("#333333").ss(26,1,1).p("AsKD+QApgIAugIQBXgRBlgXQFKhMDKhMQAWgIAXgJQEUhnDqhhQBLgfBGgdQAZgLAZgL");
	this.shape_486.setTransform(167,460.4);

	this.shape_487 = new cjs.Shape();
	this.shape_487.graphics.f().s("#333333").ss(26,1,1).p("AsKD+QAqgGAugHQBZgNBkgUQFPhADKhLQAWgIAXgIQEShnDqhtQBKgjBDgiQAZgMAYgN");
	this.shape_487.setTransform(167,460.4);

	this.shape_488 = new cjs.Shape();
	this.shape_488.graphics.f().s("#333333").ss(26,1,1).p("AsKD+QArgEAtgFQBdgLBigPQFUg2DJhIQAYgJAWgIQEQhlDph7QBKgnBAglQAZgOAXgP");
	this.shape_488.setTransform(167,460.4);

	this.shape_489 = new cjs.Shape();
	this.shape_489.graphics.f().s("#333333").ss(26,1,1).p("AsKD+QAsgDAtgDQBfgHBhgMQFZgrDJhGQAYgIAWgJQEOhkDoiIQBJgqA+gpQAYgRAXgQ");
	this.shape_489.setTransform(167,460.4);

	this.shape_490 = new cjs.Shape();
	this.shape_490.graphics.f().s("#333333").ss(26,1,1).p("AMLj9IgtAkQg8AuhIAuQjoCSkMBmQjTBRlkAhQhvAKhwAFIhaAC");
	this.shape_490.setTransform(167,460.4);

	this.shape_491 = new cjs.Shape();
	this.shape_491.graphics.f().s("#333333").ss(26,1,1).p("AsKD+QAsgDAtgCQBfgHBigLQFZgpDJhGQAYgIAWgJQEOhmDoiIQBJgrA+gqQAXgQAXgR");
	this.shape_491.setTransform(167,460.4);

	this.shape_492 = new cjs.Shape();
	this.shape_492.graphics.f().s("#333333").ss(26,1,1).p("AsKD+QArgEAugEQBdgJBigPQFVgyDKhIQAXgIAWgIQEQhlDoh/QBKgoBAgnQAYgPAXgP");
	this.shape_492.setTransform(167,460.4);

	this.shape_493 = new cjs.Shape();
	this.shape_493.graphics.f().s("#333333").ss(26,1,1).p("AsKD+QArgFAtgGQBbgMBjgRQFSg8DJhJQAXgIAWgJQEShlDph1QBKgkBCgkQAYgNAYgO");
	this.shape_493.setTransform(167,460.4);

	this.shape_494 = new cjs.Shape();
	this.shape_494.graphics.f().s("#333333").ss(26,1,1).p("AsKD+QAqgHAtgHQBZgPBlgUQFNhFDJhKQAXgJAWgIQEUhnDphpQBLgiBDggQAagMAYgM");
	this.shape_494.setTransform(167,460.4);

	this.shape_495 = new cjs.Shape();
	this.shape_495.graphics.f().s("#333333").ss(26,1,1).p("AsKD+QApgIAugJQBXgRBlgYQFJhNDKhNQAWgIAXgJQEUhnDqhfQBMgeBFgdQAagKAZgL");
	this.shape_495.setTransform(167,460.4);

	this.shape_496 = new cjs.Shape();
	this.shape_496.graphics.f().s("#333333").ss(26,1,1).p("AsKD+QAogJAugKQBWgTBmgaQFGhUDJhNQAXgJAXgIQEWhoDqhXQBMgdBHgaQAagJAZgK");
	this.shape_496.setTransform(167,460.4);

	this.shape_497 = new cjs.Shape();
	this.shape_497.graphics.f().s("#333333").ss(26,1,1).p("AsKD+QApgIAugKQBVgSBmgZQFIhSDJhNQAXgIAWgJQEWhnDqhbQBMgdBGgbQAagKAZgK");
	this.shape_497.setTransform(167,460.4);

	this.shape_498 = new cjs.Shape();
	this.shape_498.graphics.f().s("#333333").ss(26,1,1).p("AsKD+QApgIAugJQBWgSBmgYQFJhODJhNQAXgIAWgJQEVhnDqheQBLgeBGgcQAagKAZgL");
	this.shape_498.setTransform(167,460.4);

	this.shape_499 = new cjs.Shape();
	this.shape_499.graphics.f().s("#333333").ss(26,1,1).p("AsKD+QApgHAugIQBYgQBlgXQFLhIDJhMQAXgIAXgJQEUhnDphkQBLggBFgeQAagLAYgM");
	this.shape_499.setTransform(167,460.4);

	this.shape_500 = new cjs.Shape();
	this.shape_500.graphics.f().s("#333333").ss(26,1,1).p("AsKD+QAqgHAtgHQBZgQBkgVQFNhGDJhLQAXgJAWgIQEUhnDphnQBLghBEgfQAagMAYgM");
	this.shape_500.setTransform(167,460.4);

	this.shape_501 = new cjs.Shape();
	this.shape_501.graphics.f().s("#333333").ss(26,1,1).p("AsKD+QAqgGAtgIQBagOBkgUQFNhEDKhKQAXgJAWgIQEThnDphqQBLgiBEggQAZgNAYgM");
	this.shape_501.setTransform(167,460.4);

	this.shape_502 = new cjs.Shape();
	this.shape_502.graphics.f().s("#333333").ss(26,1,1).p("AsKD+QAqgGAugGQBagNBkgSQFQg+DJhKQAXgIAWgJQEShmDqhxQBKgjBCgjQAZgNAYgN");
	this.shape_502.setTransform(167,460.4);

	this.shape_503 = new cjs.Shape();
	this.shape_503.graphics.f().s("#333333").ss(26,1,1).p("AsKD+QArgFAtgFQBcgLBjgRQFSg4DKhJQAXgIAWgJQERhlDph4QBKgmBBgkQAYgOAYgO");
	this.shape_503.setTransform(167,460.4);

	this.shape_504 = new cjs.Shape();
	this.shape_504.graphics.f().s("#333333").ss(26,1,1).p("AsKD+QArgEAugEQBcgKBjgPQFVgzDJhIQAXgIAWgIQEQhlDph+QBJgoBAgmQAZgPAXgP");
	this.shape_504.setTransform(167,460.4);

	this.shape_505 = new cjs.Shape();
	this.shape_505.graphics.f().s("#333333").ss(26,1,1).p("AsKD+QArgEAugEQBdgIBigOQFWgwDKhIQAXgIAWgIQEQhlDoiBQBJgpBAgnQAYgPAXgQ");
	this.shape_505.setTransform(167,460.4);

	this.shape_506 = new cjs.Shape();
	this.shape_506.graphics.f().s("#333333").ss(26,1,1).p("AsKD+QAsgDAtgEQBegIBigMQFXguDKhHQAXgIAWgIQEPhlDoiEQBJgqA/goQAYgQAXgQ");
	this.shape_506.setTransform(167,460.4);

	this.shape_507 = new cjs.Shape();
	this.shape_507.graphics.f().s("#333333").ss(26,1,1).p("AsKD+QAsgCAtgDQBggGBhgLQFZgoDKhGQAXgIAXgJQEOhmDniJQBJgrA+gqQAXgRAXgR");
	this.shape_507.setTransform(167,460.4);

	this.shape_508 = new cjs.Shape();
	this.shape_508.graphics.f().s("#333333").ss(26,1,1).p("AsKD+QAsgCAtgCQBhgGBggKQFbglDKhFQAXgIAWgJQEOhmDoiMQBIgsA9gsQAXgRAXgR");
	this.shape_508.setTransform(167,460.4);

	this.shape_509 = new cjs.Shape();
	this.shape_509.graphics.f().s("#333333").ss(26,1,1).p("AsKD+QAtgCAtgBQBggFBhgJQFcgjDKhFQAXgIAWgIQENhmDoiPQBIgtA8gtQAYgRAWgS");
	this.shape_509.setTransform(167,460.4);

	this.shape_510 = new cjs.Shape();
	this.shape_510.graphics.f().s("#333333").ss(26,1,1).p("AsSDlQArgEAugEQA1gFA3gGQA5gFA6gGQD6gZC/gkQBEgOA9gTQDyhLDahyQAYgNAYgOQBLgqA9gqQAYgQAXgR");
	this.shape_510.setTransform(166.2,458);

	this.shape_511 = new cjs.Shape();
	this.shape_511.graphics.f().s("#333333").ss(26,1,1).p("AsZDNQApgIAtgHQA0gHA4gIQA5gHA6gHQD0gaDIgWQBEgKA+gPQDzg6DghmQAagMAYgNQBNglA+gmQAZgQAXgQ");
	this.shape_511.setTransform(165.5,455.5);

	this.shape_512 = new cjs.Shape();
	this.shape_512.graphics.f().s("#333333").ss(26,1,1).p("AshC0QAngMAugKQAzgKA4gJQA5gJA6gHQDugcDRgJQBDgFA/gKQD1grDnhZQAagLAYgKQBQghBAgjQAZgPAYgO");
	this.shape_512.setTransform(164.7,453.1);

	this.shape_513 = new cjs.Shape();
	this.shape_513.graphics.f().s("#333333").ss(26,1,1).p("AsoCbQAlgPAugNQAxgMA5gMQA5gLA7gHQDngeDaAFQBDAABAgHQD2gaDthNQAbgJAZgJQBSgdBBggQAagMAYgO");
	this.shape_513.setTransform(164,450.6);

	this.shape_514 = new cjs.Shape();
	this.shape_514.graphics.f().s("#333333").ss(26,1,1).p("AswCDQAkgSAugQQAwgQA6gNQA4gNA7gIQDggfDjATQBEADBBgCQD3gJD0hBQAbgHAagIQBUgZBCgcQAbgMAZgM");
	this.shape_514.setTransform(163.2,448.1);

	this.shape_515 = new cjs.Shape();
	this.shape_515.graphics.f().s("#333333").ss(26,1,1).p("As3BqQAhgVAugTQAvgTA7gPQA4gPA7gJQDageDsAfQBFAHBBADQD4AHD6g1QAcgFAagHQBXgVBEgYQAcgKAYgL");
	this.shape_515.setTransform(162.5,445.7);

	this.shape_516 = new cjs.Shape();
	this.shape_516.graphics.f().s("#333333").ss(26,1,1).p("As/BRQAggZAugVQAugVA7gQQA4gRA7gIQDUgjD1AvQBFAMBCAFQD5AXEBgoQAcgEAbgFQBZgRBFgVQAdgJAZgJ");
	this.shape_516.setTransform(161.7,443.2);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_448}]}).to({state:[{t:this.shape_449}]},1).to({state:[{t:this.shape_450}]},1).to({state:[{t:this.shape_451}]},1).to({state:[{t:this.shape_452}]},1).to({state:[{t:this.shape_453}]},1).to({state:[{t:this.shape_454}]},1).to({state:[{t:this.shape_455}]},1).to({state:[{t:this.shape_456}]},1).to({state:[{t:this.shape_457}]},1).to({state:[{t:this.shape_458}]},1).to({state:[{t:this.shape_448}]},1).to({state:[{t:this.shape_449}]},1).to({state:[{t:this.shape_450}]},1).to({state:[{t:this.shape_451}]},1).to({state:[{t:this.shape_452}]},1).to({state:[{t:this.shape_453}]},1).to({state:[{t:this.shape_454}]},1).to({state:[{t:this.shape_455}]},1).to({state:[{t:this.shape_456}]},1).to({state:[{t:this.shape_457}]},1).to({state:[{t:this.shape_458}]},1).to({state:[{t:this.shape_448}]},1).to({state:[{t:this.shape_459}]},1).to({state:[{t:this.shape_458}]},1).to({state:[{t:this.shape_460}]},1).to({state:[{t:this.shape_457}]},1).to({state:[{t:this.shape_451}]},1).to({state:[{t:this.shape_456}]},1).to({state:[{t:this.shape_461}]},1).to({state:[{t:this.shape_455}]},1).to({state:[{t:this.shape_462}]},1).to({state:[{t:this.shape_454}]},1).to({state:[{t:this.shape_463}]},1).to({state:[{t:this.shape_464}]},1).to({state:[{t:this.shape_465}]},1).to({state:[{t:this.shape_466}]},1).to({state:[{t:this.shape_467}]},1).to({state:[{t:this.shape_468}]},1).to({state:[{t:this.shape_469}]},1).to({state:[{t:this.shape_470}]},1).to({state:[{t:this.shape_471}]},1).to({state:[{t:this.shape_472}]},1).to({state:[{t:this.shape_473}]},1).to({state:[{t:this.shape_474}]},1).to({state:[{t:this.shape_475}]},1).to({state:[{t:this.shape_476}]},1).to({state:[{t:this.shape_477}]},1).to({state:[{t:this.shape_478}]},1).to({state:[{t:this.shape_479}]},1).to({state:[{t:this.shape_480}]},1).to({state:[{t:this.shape_481}]},1).to({state:[{t:this.shape_482}]},1).to({state:[{t:this.shape_483}]},1).to({state:[{t:this.shape_484}]},1).to({state:[{t:this.shape_485}]},1).to({state:[{t:this.shape_485}]},18).to({state:[{t:this.shape_486}]},1).to({state:[{t:this.shape_487}]},1).to({state:[{t:this.shape_488}]},1).to({state:[{t:this.shape_489}]},1).to({state:[{t:this.shape_490}]},1).to({state:[{t:this.shape_491}]},1).to({state:[{t:this.shape_492}]},1).to({state:[{t:this.shape_493}]},1).to({state:[{t:this.shape_494}]},1).to({state:[{t:this.shape_495}]},1).to({state:[{t:this.shape_485}]},1).to({state:[{t:this.shape_496}]},1).to({state:[{t:this.shape_497}]},1).to({state:[{t:this.shape_498}]},1).to({state:[{t:this.shape_486}]},1).to({state:[{t:this.shape_499}]},1).to({state:[{t:this.shape_500}]},1).to({state:[{t:this.shape_501}]},1).to({state:[{t:this.shape_487}]},1).to({state:[{t:this.shape_502}]},1).to({state:[{t:this.shape_493}]},1).to({state:[{t:this.shape_503}]},1).to({state:[{t:this.shape_488}]},1).to({state:[{t:this.shape_504}]},1).to({state:[{t:this.shape_505}]},1).to({state:[{t:this.shape_506}]},1).to({state:[{t:this.shape_489}]},1).to({state:[{t:this.shape_507}]},1).to({state:[{t:this.shape_508}]},1).to({state:[{t:this.shape_509}]},1).to({state:[{t:this.shape_490}]},1).to({state:[{t:this.shape_490}]},13).to({state:[{t:this.shape_510}]},1).to({state:[{t:this.shape_511}]},1).to({state:[{t:this.shape_512}]},1).to({state:[{t:this.shape_513}]},1).to({state:[{t:this.shape_514}]},1).to({state:[{t:this.shape_515}]},1).to({state:[{t:this.shape_516}]},1).to({state:[{t:this.shape_448}]},1).wait(1));

	// 纸
	this.shape_517 = new cjs.Shape();
	this.shape_517.graphics.f().s("#333333").ss(1,1,1).p("AoUgqIPEAAIBlBVIvEAAg");
	this.shape_517.setTransform(74.8,477.5);

	this.shape_518 = new cjs.Shape();
	this.shape_518.graphics.f("#FFFFFF").s().p("AmvArIhlhVIPEAAIBlBVg");
	this.shape_518.setTransform(74.8,477.5);

	this.shape_519 = new cjs.Shape();
	this.shape_519.graphics.f().s("#333333").ss(1,1,1).p("AoTgeIF1gQQCygCC0gBQB2gBBxAAQA2AqAvArQh1AIhsADQhcAFhdAAQingFi6ACQhiABhjABQgzgpg0gng");
	this.shape_519.setTransform(74.9,472.3);

	this.shape_520 = new cjs.Shape();
	this.shape_520.graphics.f("#FFFFFF").s().p("AjnAwIjFACIhnhQIF1gQIFmgDIDngBQA2AqAvArQh1AIhsADQhcAFhdAAQingFi6ACg");
	this.shape_520.setTransform(74.9,472.3);

	this.shape_521 = new cjs.Shape();
	this.shape_521.graphics.f().s("#333333").ss(1,1,1).p("AoSgRIFwghQC0gEC0gDQB4gBBwAAQA6ApArArQhxAQhqAHQhaAKheAAQiegKjEAEQhkABhjACQg0glg1gkg");
	this.shape_521.setTransform(75,467.2);

	this.shape_522 = new cjs.Shape();
	this.shape_522.graphics.f("#FFFFFF").s().p("AjiA1IjHADIhphJIFwghIFogHQB4gBBwAAQA6ApArArQhxAQhqAHQhaAKheAAQiegKjEAEg");
	this.shape_522.setTransform(75,467.2);

	this.shape_523 = new cjs.Shape();
	this.shape_523.graphics.f().s("#333333").ss(1,1,1).p("AoSgFIFsgxQC1gHC2gDQB6gDBuABQA+AnAoAsQhuAYhnALQhZAOheABQiXgQjOAHQhkABhkADQg1gig3ghg");
	this.shape_523.setTransform(75.1,462.1);

	this.shape_524 = new cjs.Shape();
	this.shape_524.graphics.f("#FFFFFF").s().p("AjeA6IjIAEIhshDIFsgxQC0gHC2gDQB6gDBvABQA+AnAnAsQhuAYhmALQhaAOheABQiWgQjOAHg");
	this.shape_524.setTransform(75.1,462.1);

	this.shape_525 = new cjs.Shape();
	this.shape_525.graphics.f().s("#333333").ss(1,1,1).p("AoRAFIFmhAQC3gIC3gFQB7gDBuABQBBAmAlAtQhrAfhkAOQhYATheACQiPgVjYAIQhlADhkAEQg3ghg3gfg");
	this.shape_525.setTransform(75.2,457);

	this.shape_526 = new cjs.Shape();
	this.shape_526.graphics.f("#FFFFFF").s().p("AjaA+QhlADhjAEIhvhAIFmhAQC3gIC2gFQB8gDBuABQBCAmAkAtQhrAfhjAOQhZATheACQiPgVjYAIg");
	this.shape_526.setTransform(75.2,457);

	this.shape_527 = new cjs.Shape();
	this.shape_527.graphics.f().s("#333333").ss(1,1,1).p("AoQARIFhhQQC4gKC3gGQB/gEBsACQBFAjAhAuQhnAnhhASQhXAYhfACQiJgbjgALQhlADhlAFQg4gdg4gdg");
	this.shape_527.setTransform(75.3,451.8);

	this.shape_528 = new cjs.Shape();
	this.shape_528.graphics.f("#FFFFFF").s().p("AjWBDQhlADhlAFIhwg6IFhhQQC4gKC3gGQB/gEBsACQBFAjAhAuQhnAnhhASQhXAYhfACQiJgbjgALg");
	this.shape_528.setTransform(75.3,451.8);

	this.shape_529 = new cjs.Shape();
	this.shape_529.graphics.f().s("#333333").ss(1,1,1).p("AoQAeIFdhhQC5gNC4gGQCBgFBrACQBJAiAeAxQhkAsheAWQhWAdhgACQiBggjpANQhmAEhlAGQg6gbg6gZg");
	this.shape_529.setTransform(75.4,446.7);

	this.shape_530 = new cjs.Shape();
	this.shape_530.graphics.f("#FFFFFF").s().p("AjRBIQhmAEhlAGIh0g0IFdhhQC5gNC4gGQCBgFBrACQBJAiAeAxQhkAsheAWQhWAdhgACQiBggjpANg");
	this.shape_530.setTransform(75.4,446.7);

	this.shape_531 = new cjs.Shape();
	this.shape_531.graphics.f().s("#333333").ss(1,1,1).p("AoPAqIFXhxQC6gPC6gIQCEgGBpADQBNAgAaAyQhhA0haAaQhWAhhfADQh6gljzAOQhnAFhlAHQg7gYg7gWg");
	this.shape_531.setTransform(75.6,441.6);

	this.shape_532 = new cjs.Shape();
	this.shape_532.graphics.f("#FFFFFF").s().p("AjNBMQhnAFhlAHIh2guIFYhxQC5gPC6gIQCDgGBqADQBNAgAaAyQhhA0hbAaQhVAhhgADQh5gljzAOg");
	this.shape_532.setTransform(75.6,441.6);

	this.shape_533 = new cjs.Shape();
	this.shape_533.graphics.f().s("#333333").ss(1,1,1).p("AoOA2IFTiBQC7gRC7gJQCFgHBoADQBRAfAXAyQheA9hYAdQhUAmhgADQhygrj9ARQhnAFhmAIQg8gUg8gUg");
	this.shape_533.setTransform(75.7,436.4);

	this.shape_534 = new cjs.Shape();
	this.shape_534.graphics.f("#FFFFFF").s().p("AjJBRQhnAFhmAIIh4goIFTiBQC7gRC6gJQCGgHBoADQBRAfAWAyQhdA9hYAdQhUAmhgADQhygrj9ARg");
	this.shape_534.setTransform(75.7,436.4);

	this.shape_535 = new cjs.Shape();
	this.shape_535.graphics.f().s("#333333").ss(1,1,1).p("AoOBDIFOiSQC/gTC5gKQCIgIBnAEQBVAdATAzQhbBEhVAhQhTArhgADQhqgwkHATQhnAGhnAJQg9gSg+gQg");
	this.shape_535.setTransform(75.8,431.3);

	this.shape_536 = new cjs.Shape();
	this.shape_536.graphics.f("#FFFFFF").s().p("AjFBWQhnAGhnAJIh7giIFOiSQC/gTC5gKQCIgIBnAEQBVAdATAzQhbBEhVAhQhTArhgADQhqgwkHATg");
	this.shape_536.setTransform(75.8,431.3);

	this.shape_537 = new cjs.Shape();
	this.shape_537.graphics.f().s("#333333").ss(1,1,1).p("AoNBPIFIiiQDAgWC7gKQCKgJBmAEQBYAbAQA0QhXBMhSAkQhSAwhhAEQhig1kRAVQhoAGhnAKQg/gPg+gNg");
	this.shape_537.setTransform(75.9,426.2);

	this.shape_538 = new cjs.Shape();
	this.shape_538.graphics.f("#FFFFFF").s().p("AjBBbQhoAGhnAKIh9gcIFIiiQDAgWC7gKQCKgJBmAEQBYAbAQA0QhXBMhSAkQhSAwhhAEQhig1kRAVg");
	this.shape_538.setTransform(75.9,426.2);

	this.shape_539 = new cjs.Shape();
	this.shape_539.graphics.f().s("#333333").ss(1,1,1).p("AoNBbIFEiyQDBgYC8gMQCMgJBlAEQBcAZANA2QhUBThPAoQhRA1hiAEQhag7kaAYQhpAHhoALQhAgNhAgKg");
	this.shape_539.setTransform(76,421);

	this.shape_540 = new cjs.Shape();
	this.shape_540.graphics.f("#FFFFFF").s().p("Ai8BgQhpAHhoALQhAgNhAgKIFEiyQDBgYC8gMQCMgJBlAEQBcAZANA2QhUBThPAoQhRA1hiAEQhag7kaAYg");
	this.shape_540.setTransform(76,421);

	this.shape_541 = new cjs.Shape();
	this.shape_541.graphics.f().s("#333333").ss(1,1,1).p("AoMBnIE/jDQDDgZC8gNQCPgLBjAFQBgAYAJA2QhRBbhMArQhQA6hiAEQhSg/kkAZQhpAIhpAMQhBgKhBgHg");
	this.shape_541.setTransform(76.2,415.9);

	this.shape_542 = new cjs.Shape();
	this.shape_542.graphics.f("#FFFFFF").s().p("Ai4BkQhqAIhpAMQhBgKhAgHIE+jDQDEgZC8gNQCOgLBkAFQBfAYAKA2QhRBbhMArQhQA6hiAEQhSg/kkAZg");
	this.shape_542.setTransform(76.2,415.9);

	this.shape_543 = new cjs.Shape();
	this.shape_543.graphics.f().s("#333333").ss(1,1,1).p("AoMB0IE6jTQDEgcC+gOQCRgMBiAFQBkAWAGA3QhOBkhJAuQhPA/hjAEQhKhFkuAcQhqAIhpANQhDgGhCgEg");
	this.shape_543.setTransform(76.3,410.8);

	this.shape_544 = new cjs.Shape();
	this.shape_544.graphics.f("#FFFFFF").s().p("Ai0BpQhqAIhpANQhCgGhCgEIE6jTQDDgcC+gOQCRgMBiAFQBkAWAGA3QhOBkhJAuQhPA/hjAEQhKhFkuAcg");
	this.shape_544.setTransform(76.3,410.8);

	this.shape_545 = new cjs.Shape();
	this.shape_545.graphics.f().s("#333333").ss(1,1,1).p("AoLCAIE1jkQDFgeC/gPQCTgMBhAFQBnAVADA3QhLBshGAyQhOBDhjAFQhChKk4AeQhqAIhqAOQhEgDhDgBg");
	this.shape_545.setTransform(76.4,405.7);

	this.shape_546 = new cjs.Shape();
	this.shape_546.graphics.f("#FFFFFF").s().p("AiwBuQhqAIhqAOQhEgDhDgBIE1jkQDFgeC/gPQCTgMBhAFQBnAVADA3QhLBshGAyQhOBDhjAFQhChKk4Aeg");
	this.shape_546.setTransform(76.4,405.7);

	this.shape_547 = new cjs.Shape();
	this.shape_547.graphics.f().s("#333333").ss(1,1,1).p("AoKCMIEwj0QDHggC/gQQCWgNBfAFQBrATgBA5QhHBzhDA2QhNBIhjAFQg7hPlBAgQhsAJhqAPQhFgBhEACg");
	this.shape_547.setTransform(76.5,400.5);

	this.shape_548 = new cjs.Shape();
	this.shape_548.graphics.f("#FFFFFF").s().p("AirBzQhsAJhqAPQhFgBhEACIEwj0QDHggC/gQQCWgNBfAFQBrATgBA5QhHBzhDA2QhNBIhjAFQg7hPlBAgg");
	this.shape_548.setTransform(76.5,400.5);

	this.shape_549 = new cjs.Shape();
	this.shape_549.graphics.f().s("#333333").ss(1,1,1).p("AoKCZIErkFQDIgiDAgRQCZgOBeAGQBvARgFA5QhDB7hBA6QhLBNhlAFQgyhVlLAiQhsAKhrAQQhGADhGAFg");
	this.shape_549.setTransform(76.6,395.4);

	this.shape_550 = new cjs.Shape();
	this.shape_550.graphics.f("#FFFFFF").s().p("AinB3QhsAKhrAQQhGADhGAFIErkFQDIgiDAgRQCZgOBeAGQBvARgFA5QhDB7hBA6QhLBNhlAFQgyhVlLAig");
	this.shape_550.setTransform(76.6,395.4);

	this.shape_551 = new cjs.Shape();
	this.shape_551.graphics.f().s("#333333").ss(1,1,1).p("AoJClIEmkVQDJglDBgSQCbgPBdAHQByAPgHA7QhBCCg9A9QhLBShkAGQgrhalVAkQhtALhrARQhHAEhHAJg");
	this.shape_551.setTransform(76.7,390.3);

	this.shape_552 = new cjs.Shape();
	this.shape_552.graphics.f("#FFFFFF").s().p("AijB8QhtALhrARQhHAEhHAJIEmkVQDJglDBgSQCbgPBdAHQByAPgHA7QhBCCg9A9QhLBShkAGQgrhalVAkg");
	this.shape_552.setTransform(76.7,390.3);

	this.shape_553 = new cjs.Shape();
	this.shape_553.graphics.f().s("#333333").ss(1,1,1).p("AoJCxIEiklQDKgnDCgTQCdgQBbAHQB3AOgLA7Qg9CLg7BAQhJBXhlAGQgjhflfAmQhtALhsASQhJAIhIALg");
	this.shape_553.setTransform(76.9,385.1);

	this.shape_554 = new cjs.Shape();
	this.shape_554.graphics.f("#FFFFFF").s().p("AifCBQhtALhsASQhJAIhIALIEiklQDKgnDCgTQCdgQBbAHQB3AOgLA7Qg9CLg7BAQhJBXhlAGQgjhflfAmg");
	this.shape_554.setTransform(76.9,385.1);

	this.shape_555 = new cjs.Shape();
	this.shape_555.graphics.f().s("#333333").ss(1,1,1).p("AoJC+IEdk2QDMgpDDgUQCfgRBaAHQB6ANgOA8Qg6CSg4BEQhIBbhmAHQgahllpApQhuAMhsATQhKAKhKAPg");
	this.shape_555.setTransform(77,380);

	this.shape_556 = new cjs.Shape();
	this.shape_556.graphics.f("#FFFFFF").s().p("AibCGQhuAMhsATQhKAKhKAPIEdk2QDMgpDDgUQCfgRBaAHQB6ANgOA8Qg6CSg4BEQhIBbhmAHQgahllpApg");
	this.shape_556.setTransform(77,380);

	this.shape_557 = new cjs.Shape();
	this.shape_557.graphics.f().s("#333333").ss(1,1,1).p("Ajxh8QDNgrDEgWQGLgrglBsQg2CXg0BIQhIBghmAHQgThqlyAqQi7AVi2Arg");
	this.shape_557.setTransform(77.2,374.9);

	this.shape_558 = new cjs.Shape();
	this.shape_558.graphics.f("#FFFFFF").s().p("AiXCKQi7AVi2ArIEXlGQDNgrDEgWQGLgrglBsQg2CXg0BIQhIBghmAHQgThqlyAqg");
	this.shape_558.setTransform(77.2,374.9);

	this.shape_559 = new cjs.Shape();
	this.shape_559.graphics.f().s("#333333").ss(1,1,1).p("AoHC0QCHiWCFiSQALgMALgLQC7goCegOQAbgDAagBQCygOBZAWQBjASgSA5QgPAwgOApQgoBSgnAwQhKBchnAHQgWhTj5AMQg2AAhBAFQi2AKizAgg");
	this.shape_559.setTransform(77.9,367.5);

	this.shape_560 = new cjs.Shape();
	this.shape_560.graphics.f("#FFFFFF").s().p("AgnCFQg2AAhBAFQi2AKizAgIEMkoIAWgXQC7goCegOQAbgDAagBQCygOBZAWQBjASgSA5QgPAwgOApQgoBSgnAwQhKBchnAHQgWhTj5AMg");
	this.shape_560.setTransform(77.9,367.5);

	this.shape_561 = new cjs.Shape();
	this.shape_561.graphics.f().s("#333333").ss(1,1,1).p("AoFCeQCLiTCKiOQALgMAMgLQDEgqCVgIQAZgBAZAAQCogHBaAfQBgAUgQA6QgNAxgNAoQgqBQgpAtQhNBZhpAHQgdhQj2AMQg1gDg/ABQiyABitAUg");
	this.shape_561.setTransform(78.7,360);

	this.shape_562 = new cjs.Shape();
	this.shape_562.graphics.f("#FFFFFF").s().p("AgyCLQg1gDg/ABQiyABitAUIEVkhIAXgXQDEgqCVgIIAygBQCogHBaAfQBgAUgQA6QgNAxgNAoQgqBQgpAtQhNBZhpAHQgdhQj2AMg");
	this.shape_562.setTransform(78.7,360);

	this.shape_563 = new cjs.Shape();
	this.shape_563.graphics.f().s("#333333").ss(1,1,1).p("AoECNQCRiPCOiNQALgMAMgKQDOgtCMgCQAXABAXACQCggBBZAoQBdAXgNA7QgLAwgLAoQgtBOgsArQhQBVhqAHQgjhNj0AMQgzgFg+gDQitgJipAKg");
	this.shape_563.setTransform(79.5,352.3);

	this.shape_564 = new cjs.Shape();
	this.shape_564.graphics.f("#FFFFFF").s().p("Ag9CUQgzgGg+gCQitgJipAKIEfkcIAXgXQDOgtCMgBIAuADQCggBBZAoQBdAWgNA8IgWBYQgtBOgsArQhQBVhqAHQgjhMj0ALg");
	this.shape_564.setTransform(79.5,352.3);

	this.shape_565 = new cjs.Shape();
	this.shape_565.graphics.f().s("#333333").ss(1,1,1).p("AoDB8QCWiMCSiKQAMgLAMgKQDYgwCDAFQAVACAWAEQCXAGBZAwQBaAagLA8QgJAxgJAnQgwBLgvApQhSBShsAGQgqhIjxALQgygJg8gFQiogUilgBg");
	this.shape_565.setTransform(80.3,344.3);

	this.shape_566 = new cjs.Shape();
	this.shape_566.graphics.f("#FFFFFF").s().p("AhICfQgygJg8gFQiogUilgBIEokWIAYgVQDYgwCDAFIArAGQCXAGBZAwQBaAagLA8IgSBYQgwBLgvApQhSBShsAGQgqhIjxALg");
	this.shape_566.setTransform(80.3,344.3);

	this.shape_567 = new cjs.Shape();
	this.shape_567.graphics.f().s("#333333").ss(1,1,1).p("AoBBrQCbiKCXiFQAMgLAMgKQDigzB5AMQATAEAVAFQCOAMBZA5QBXAdgIA8QgIAxgHApQgzBGgxApQhVBNhtAGQgxhFjuAMQgxgMg6gJQikgeiggMg");
	this.shape_567.setTransform(81.1,336.4);

	this.shape_568 = new cjs.Shape();
	this.shape_568.graphics.f("#FFFFFF").s().p("AhSCqQgxgMg6gJQikgeiggMQCbiKCXiFIAYgVQDigzB5AMIAoAJQCOAMBZA5QBXAdgIA8IgPBaQgzBGgxApQhVBNhtAGQgxhFjuAMg");
	this.shape_568.setTransform(81.1,336.4);

	this.shape_569 = new cjs.Shape();
	this.shape_569.graphics.f().s("#333333").ss(1,1,1).p("AoABbQCgiHCbiCQANgKANgLQDsg1BvATQARAFATAHQCGASBZBCQBUAggGA9QgGAvgGArQg1BDg0AnQhXBJhvAGQg4hBjrALQgvgPg5gMQifgoicgXg");
	this.shape_569.setTransform(81.9,328.4);

	this.shape_570 = new cjs.Shape();
	this.shape_570.graphics.f("#FFFFFF").s().p("AhdC1QgvgPg5gMQifgoicgXQCgiHCbiCIAagVQDsg1BvATIAkAMQCGASBZBCQBUAggGA9IgMBaQg1BDg0AnQhXBJhvAGQg4hBjrALg");
	this.shape_570.setTransform(81.9,328.4);

	this.shape_571 = new cjs.Shape();
	this.shape_571.graphics.f().s("#333333").ss(1,1,1).p("An/BLQCliFCgh+QANgKANgKQD3g4BkAZQAQAGASAJQB9AZBYBLQBSAigEA+QgFAwgDArQg4BAg3AkQhaBGhvAGQg/g9joAKQgvgSg2gPQibgyiYgig");
	this.shape_571.setTransform(82.7,320.5);

	this.shape_572 = new cjs.Shape();
	this.shape_572.graphics.f("#FFFFFF").s().p("AhnDAQgvgSg2gPQibgyiYgiQCliFCgh+IAagUQD3g4BkAZQAQAGASAJQB9AZBYBLQBSAigEA+IgIBbQg4BAg3AkQhaBGhvAGQg/g9joAKg");
	this.shape_572.setTransform(82.7,320.5);

	this.shape_573 = new cjs.Shape();
	this.shape_573.graphics.f().s("#333333").ss(1,1,1).p("An+A7QCqiCCkh7QAOgJANgKQEBg6BbAfQAOAIAQAKQB0AgBYBTQBPAlgCA/QgCAwgCAsQg7A8g5AjQhdBChxAGQhFg6jmAKQgtgVg1gSQiWg8iTgug");
	this.shape_573.setTransform(83.5,312.4);

	this.shape_574 = new cjs.Shape();
	this.shape_574.graphics.f("#FFFFFF").s().p("AhzDMQgtgVg1gSQiWg8iTguQCqiCCkh7IAbgTQEBg6BbAfIAeASQB0AgBYBTQBPAlgCA/IgEBcQg7A8g5AjQhdBChxAGQhFg6jmAKg");
	this.shape_574.setTransform(83.5,312.4);

	this.shape_575 = new cjs.Shape();
	this.shape_575.graphics.f().s("#333333").ss(1,1,1).p("An9AsQCviACph3QAOgJANgKQEMg9BRAnQAMAJAPALQBrAnBYBcQBMAoABA9QgCAzAAArQg9A6g8AgQhfA/hzAFQhMg2jjAKQgrgYgzgWQiShGiPg4g");
	this.shape_575.setTransform(84.3,304.4);

	this.shape_576 = new cjs.Shape();
	this.shape_576.graphics.f("#FFFFFF").s().p("Ah9DYQgsgYgzgWQiRhGiQg4QCviACph3IAbgTQEMg9BRAnIAbAUQBrAnBYBcQBMAoAAA9IgBBeQg8A6g9AgQhfA/hzAFQhLg2jjAKg");
	this.shape_576.setTransform(84.3,304.4);

	this.shape_577 = new cjs.Shape();
	this.shape_577.graphics.f().s("#333333").ss(1,1,1).p("An9AcQC0h9CthzQAOgKAOgJQEWg/BHAsQAKALAOANQBiAtBYBlQBJArADA+QAAAzADAsQhAA2hAAeQhhA7h0AGQhTgzjgAKQgqgcgxgYQiNhRiLhDg");
	this.shape_577.setTransform(85.3,296.4);

	this.shape_578 = new cjs.Shape();
	this.shape_578.graphics.f("#FFFFFF").s().p("AiKDkQgqgcgxgYQiNhRiLhDQC0h9CthzIAcgTQEWg/BHAsIAYAYQBiAtBYBlQBJArADA+QAAAzADAsQhAA2hAAeQhhA7h0AGQhTgzjgAKg");
	this.shape_578.setTransform(85.3,296.4);

	this.shape_579 = new cjs.Shape();
	this.shape_579.graphics.f().s("#333333").ss(1,1,1).p("An+ANQC5h7CyhwQAOgJAOgIQEhhDA9A0QAJAMAMAPQBZAzBYBuQBGAtAFA/QACAzAEAtQhCAyhCAdQhkA3h2AFQhagvjdAKQgogfgwgcQiJhaiGhOg");
	this.shape_579.setTransform(86.3,288.3);

	this.shape_580 = new cjs.Shape();
	this.shape_580.graphics.f("#FFFFFF").s().p("AiXDwQgogfgwgcQiJhaiFhOQC4h7CyhwIAcgRQEhhDA9A0IAUAbQBaAzBYBuQBGAtAFA/QADAzADAtQhCAyhCAdQhlA3h1AFQhZgvjeAKg");
	this.shape_580.setTransform(86.3,288.3);

	this.shape_581 = new cjs.Shape();
	this.shape_581.graphics.f().s("#333333").ss(1,1,1).p("An+AAQC9h7C2hrQAPgJAPgIQErhGAzA6QAGAOALAQQBRA6BXB3QBEAwAHA/QAEA0AGAtQhFAvhFAbQhnAzh2AFQhhgrjbAJQgnghgugfQiEhliBhXg");
	this.shape_581.setTransform(87.3,280.2);

	this.shape_582 = new cjs.Shape();
	this.shape_582.graphics.f("#FFFFFF").s().p("AikD8QgnghgtgfQiEhliChXQC9h7C3hrIAdgRQEqhGA0A6QAGAOALAQQBRA6BYB3QBDAwAHA/QAEA0AGAtQhFAvhFAbQhnAzh3AFQhggrjbAJg");
	this.shape_582.setTransform(87.3,280.2);

	this.shape_583 = new cjs.Shape();
	this.shape_583.graphics.f().s("#333333").ss(1,1,1).p("An/gQQDDh3C6hpQAQgIAPgIQE1hIApBBQAFAOAJATQBIBABXCAQBBAwAJBDQAGAzAIAuQhIArhIAaQhpAvh4AFQhngnjYAIQgmgkgsgjQh/huh+hjg");
	this.shape_583.setTransform(88.2,272.2);

	this.shape_584 = new cjs.Shape();
	this.shape_584.graphics.f("#FFFFFF").s().p("AiwEIQgmgkgsgjQh/huh+hjQDDh3C6hpIAfgQQE1hIApBBQAFAOAJATQBIBABXCAQBBAwAJBDQAGAzAIAuQhIArhIAaQhpAvh4AFQhngnjYAIg");
	this.shape_584.setTransform(88.2,272.2);

	this.shape_585 = new cjs.Shape();
	this.shape_585.graphics.f().s("#333333").ss(1,1,1).p("An/gfQDHh1C/hlQAQgIAPgIQE/hKAgBHQADAQAHAUQBABHBXCIQA+A0ALBDQAIA0AJAuQhKAohLAXQhrAsh6AFQhugkjVAIQglgngqgmQh6h5h5htg");
	this.shape_585.setTransform(89.2,264.1);

	this.shape_586 = new cjs.Shape();
	this.shape_586.graphics.f("#FFFFFF").s().p("Ai9EUQglgngqgmQh6h5h5htQDHh1C/hlIAfgQQE/hKAgBHQADAQAHAUQBABHBXCIQA+A0ALBDQAIA0AJAuQhKAohLAXQhrAsh6AFQhugkjVAIg");
	this.shape_586.setTransform(89.2,264.1);

	this.shape_587 = new cjs.Shape();
	this.shape_587.graphics.f().s("#333333").ss(1,1,1).p("AoAguQDNhzDDhhQAQgHAPgIQFLhNAVBOQABARAGAWQA3BNBWCRQA7A3AOBDQAKA1ALAuQhNAlhNAVQhvAoh7AFQh0ggjSAIQgkgrgpgpQh2iCh0h5g");
	this.shape_587.setTransform(90.2,256);

	this.shape_588 = new cjs.Shape();
	this.shape_588.graphics.f("#FFFFFF").s().p("AjJEhQgkgrgpgpQh2iCh0h5QDNhzDDhhIAfgPQFKhNAWBOQABARAGAWQA2BNBYCRQA6A3AOBDQAKA1ALAuQhNAlhNAVQhvAoh7AFQh0ggjSAIg");
	this.shape_588.setTransform(90.2,256);

	this.shape_589 = new cjs.Shape();
	this.shape_589.graphics.f().s("#333333").ss(1,1,1).p("AoBg9QDShxDHhdQARgHAQgHQFUhQALBUQAAATAEAXQAuBUBXCYQA4A7AQBEQALA1AOAvQhQAhhQAUQhxAkh8AFQh6gdjRAIQgjgugmgsQhyiNhwiDg");
	this.shape_589.setTransform(91.2,248);

	this.shape_590 = new cjs.Shape();
	this.shape_590.graphics.f("#FFFFFF").s().p("AjWEtQgjgugmgsQhyiNhwiDQDShxDHhdIAhgOQFUhQALBUQAAATAEAXICFDsQA4A7AQBEQALA1AOAvQhQAhhQAUQhxAkh8AFQh6gdjRAIg");
	this.shape_590.setTransform(91.2,248);

	this.shape_591 = new cjs.Shape();
	this.shape_591.graphics.f().s("#333333").ss(1,1,1).p("AoBhNQDXhuDLhZQARgHARgHQFehTACBbQgDAUADAZQAmBbBWChQA1A+ASBEQANA2AQAvQhTAehTARQhzAhh+AEQiAgYjPAHQghgxgkgvQhtiXhsiPg");
	this.shape_591.setTransform(92.2,239.9);

	this.shape_592 = new cjs.Shape();
	this.shape_592.graphics.f("#FFFFFF").s().p("AjjE5QghgxglgvQhtiXhsiPQDXhuDMhZIAhgOQFfhTACBbQgDAUADAZQAmBbBWChQA1A+ASBEQANA2AQAvQhTAehTARQh0Ahh9AEQiBgYjOAHg");
	this.shape_592.setTransform(92.2,239.9);

	this.shape_593 = new cjs.Shape();
	this.shape_593.graphics.f().s("#333333").ss(1,1,1).p("AoChcQDbhrDRhWQARgHARgGQFohWgIBiQgEAWACAaQAcBhBXCqQAyBAAUBGQAPA2ARAvQhWAbhUAPQh3Adh/AEQiHgVjMAHQgggzgjgzQhoihhniag");
	this.shape_593.setTransform(93.2,231.8);

	this.shape_594 = new cjs.Shape();
	this.shape_594.graphics.f("#FFFFFF").s().p("AjwFFQgfgzgkgzQhoihhniaQDchrDQhWIAigNQFphWgJBiQgEAWACAaQAcBhBWCqQAzBAAUBGQAPA2ARAvQhWAbhUAPQh3Adh/AEQiHgVjMAHg");
	this.shape_594.setTransform(93.2,231.8);

	this.shape_595 = new cjs.Shape();
	this.shape_595.graphics.f().s("#333333").ss(1,1,1).p("AoDhrQDhhpDVhSQASgHAQgGQF0hYgTBoQgGAXABAcQATBoBWCyQAwBEAWBGQARA2ATAwQhYAXhYAOQh5AZiAAEQiOgRjJAGQgfg3ghg1Qhkirhjilg");
	this.shape_595.setTransform(94.2,223.8);

	this.shape_596 = new cjs.Shape();
	this.shape_596.graphics.f("#FFFFFF").s().p("Aj8FRQgfg3ghg1IjHlQQDhhpDVhSIAigNQF0hYgTBoQgGAXABAcQATBoBWCyQAwBEAWBGQARA2ATAwQhYAXhYAOQh5AZiAAEQiOgRjJAGg");
	this.shape_596.setTransform(94.2,223.8);

	this.shape_597 = new cjs.Shape();
	this.shape_597.graphics.f().s("#333333").ss(1,1,1).p("AoDh6QDlhmDZhPQATgGARgGQF9hbgcBvQgIAYgBAeQALBuBWC8QAtBGAYBHQATA2AUAwQhaAUhbAMQh8AWiBADQiVgNjGAGQgdg6ggg5Qhfi1heiwg");
	this.shape_597.setTransform(95.2,215.7);

	this.shape_598 = new cjs.Shape();
	this.shape_598.graphics.f("#FFFFFF").s().p("AkJFeQgdg6ggg5Ii9llQDlhmDZhPIAkgMQF9hbgcBvQgIAYgBAeQALBuBWC8QAtBGAYBHQATA2AUAwQhaAUhbAMQh8AWiBADQiVgNjGAGg");
	this.shape_598.setTransform(95.2,215.7);

	this.shape_599 = new cjs.Shape();
	this.shape_599.graphics.f().s("#333333").ss(1,1,1).p("AoEiJQDrhkDdhLQATgGARgGQGJhdgnB1QgKAagCAgQACB0BVDEQAqBJAcBIQAUA2AWAxQhdAQheALQh9ARiEAEQibgKjEAGQgcg9gdg8QhbjAhai6g");
	this.shape_599.setTransform(96.2,207.6);

	this.shape_600 = new cjs.Shape();
	this.shape_600.graphics.f("#FFFFFF").s().p("AkWFqQgbg9geg8Ii1l6QDrhkDehLIAkgMQGHhdgmB1QgKAagCAgQACB0BVDEQArBJAaBIQAVA2AWAxQhdAQheALQh+ARiCAEQicgKjEAGg");
	this.shape_600.setTransform(96.2,207.6);

	this.shape_601 = new cjs.Shape();
	this.shape_601.graphics.f().s("#333333").ss(1,1,1).p("AoFiZQDwhhDihHQATgGASgFQGShggwB7QgMAcgEAhQgHB7BWDNQAnBMAdBIQAWA3AZAxQhgANhhAIQiAAOiFAEQiigHjBAGQgahAgcg/QhWjKhWjGg");
	this.shape_601.setTransform(97.2,199.6);

	this.shape_602 = new cjs.Shape();
	this.shape_602.graphics.f("#FFFFFF").s().p("AkjF2QgahAgcg/IismQQDwhhDihHIAlgLQGShggwB7QgMAcgEAhQgHB7BWDNQAnBMAdBIQAWA3AZAxQhgANhhAIQiAAOiFAEQiigHjBAGg");
	this.shape_602.setTransform(97.2,199.6);

	this.shape_603 = new cjs.Shape();
	this.shape_603.graphics.f().s("#333333").ss(1,1,1).p("AoGioQD1hfDmhEQAUgFASgFQGdhjg6CCQgOAdgFAjQgQCBBWDWQAkBOAgBKQAXA3AbAyQhjAJhkAGQiCALiHADQipgDi+AFQgZhDgahCQhRjUhSjQg");
	this.shape_603.setTransform(98.2,191.6);

	this.shape_604 = new cjs.Shape();
	this.shape_604.graphics.f("#FFFFFF").s().p("AljD8IiimkQD1hfDmhEIAlgKQGdhjg6CCQgOAdgFAjQgQCBBWDWQAkBOAgBKQAXA3AaAyQhiAJhkAGQiCALiGADQiqgDi9AFIg0iFg");
	this.shape_604.setTransform(98.2,191.6);

	this.shape_605 = new cjs.Shape();
	this.shape_605.graphics.f().s("#333333").ss(1,1,1).p("AoGi5QD5hdDrhAQAUgFAQgFQGphlhDCJQgPAegIAkQgYCIBWDfQAhBRAhBKQAaA4AcAyQhmAGhlAEQiGAHiHADQiwABi7AFQgYhGgZhGQhNjehMjbg");
	this.shape_605.setTransform(99.2,183.7);

	this.shape_606 = new cjs.Shape();
	this.shape_606.graphics.f("#FFFFFF").s().p("AltEAIiZm5QD5hdDshAIAjgKQGphlhDCJQgPAegIAkQgYCIBWDfQAhBRAhBKQAaA4AcAyQhmAGhlAEQiGAHiHADQiwABi7AFIgxiMg");
	this.shape_606.setTransform(99.2,183.7);

	this.shape_607 = new cjs.Shape();
	this.shape_607.graphics.f().s("#333333").ss(1,1,1).p("AoHjKQD/haDvg8QHch4hRCWQhRCWBrElQA2CUBGB1ItRAUg");
	this.shape_607.setTransform(100.1,175.8);

	this.shape_608 = new cjs.Shape();
	this.shape_608.graphics.f("#FFFFFF").s().p("AoHjKQD/haDvg8QHch4hRCWQhRCWBrElQA2CUBGB1ItRAUg");
	this.shape_608.setTransform(100.1,175.8);

	this.shape_609 = new cjs.Shape();
	this.shape_609.graphics.f().s("#333333").ss(1,1,1).p("AoFjNQD/hYDvg6QCkgoBlgJQCygNgyBhQhMCYBqEiQAdBOAgBGQAbA8AeA1IqYAQIi0gBg");
	this.shape_609.setTransform(95.3,185.8);

	this.shape_610 = new cjs.Shape();
	this.shape_610.graphics.f("#FFFFFF").s().p("AlGGSIi/pfQD/hYDvg6QCkgoBlgJQCygNgyBhQhMCYBqEiQAdBOAgBGQAbA8AeA1IqYAQg");
	this.shape_610.setTransform(95.3,185.8);

	this.shape_611 = new cjs.Shape();
	this.shape_611.graphics.f().s("#333333").ss(1,1,1).p("AoDjTQD+hUDwg5QCjgnBlgJQCugJgvBhQhICZBqEgQAcBNAhBGQAYA7AbAzIqXAPIiwgGg");
	this.shape_611.setTransform(90.4,196.1);

	this.shape_612 = new cjs.Shape();
	this.shape_612.graphics.f("#FFFFFF").s().p("AlDGLIjApeQD+hUDwg5QCkgnBlgJQCtgJgvBhQhHCZBpEgQAdBNAgBGQAXA7AcAzIqXAPg");
	this.shape_612.setTransform(90.4,196.1);

	this.shape_613 = new cjs.Shape();
	this.shape_613.graphics.f().s("#333333").ss(1,1,1).p("AoBjYQD+hSDwg2QCigmBngIQCpgHgtBhQhCCbBoEdQAdBNAgBGQAVA4AYAyIqVAPIitgLg");
	this.shape_613.setTransform(85.6,206.4);

	this.shape_614 = new cjs.Shape();
	this.shape_614.graphics.f("#FFFFFF").s().p("AlAGFIjBpdQD+hSDvg2QCjgmBngIQCpgHgtBhQhCCbBoEdQAdBNAgBGQAUA4AZAyIqVAPg");
	this.shape_614.setTransform(85.6,206.4);

	this.shape_615 = new cjs.Shape();
	this.shape_615.graphics.f().s("#333333").ss(1,1,1).p("An/jdQD+hPDwg1QChgkBngIQCmgDgrBhQg9CcBnEZQAdBOAgBGQASA2AVAxIqUAOIiqgRg");
	this.shape_615.setTransform(80.7,216.6);

	this.shape_616 = new cjs.Shape();
	this.shape_616.graphics.f("#FFFFFF").s().p("Ak+F+IjBpbQD+hPDwg1QChgkBngIQCmgDgrBhQg9CcBnEZQAdBOAgBGQASA2AVAxIqUAOg");
	this.shape_616.setTransform(80.7,216.6);

	this.shape_617 = new cjs.Shape();
	this.shape_617.graphics.f().s("#333333").ss(1,1,1).p("An9jiQD+hMDvgzQChgkBpgHQCgAAgnBhQg5CeBnEWQAcBNAgBHQAPA0ASAvIqTANIimgVg");
	this.shape_617.setTransform(75.8,226.9);

	this.shape_618 = new cjs.Shape();
	this.shape_618.graphics.f("#FFFFFF").s().p("Ak7F4IjCpaQD+hMDvgzQChgkBogHQChAAgnBhQg5CeBnEWQAbBNAhBHQAPA0ASAvIqUANg");
	this.shape_618.setTransform(75.8,226.9);

	this.shape_619 = new cjs.Shape();
	this.shape_619.graphics.f().s("#333333").ss(1,1,1).p("An7jnQD9hJDwgxQCggjBpgHQCdADglBhQg0CfBlEUQAdBNAgBGQAMAzAPAtIqSANIiigag");
	this.shape_619.setTransform(70.9,237.1);

	this.shape_620 = new cjs.Shape();
	this.shape_620.graphics.f("#FFFFFF").s().p("Ak4FyIjDpZQD9hJDwgxQCggjBpgHQCdADglBhQg0CfBlEUQAdBNAgBGQAMAzAPAtIqSANg");
	this.shape_620.setTransform(70.9,237.1);

	this.shape_621 = new cjs.Shape();
	this.shape_621.graphics.f().s("#333333").ss(1,1,1).p("An5jrQD9hHDwgwQCfghBqgHQCYAHgiBhQgwChBlERQAdBMAfBGQAKAyAMAqIqRANIiegfg");
	this.shape_621.setTransform(66.1,247.4);

	this.shape_622 = new cjs.Shape();
	this.shape_622.graphics.f("#FFFFFF").s().p("Ak1FsIjEpYQD9hHDwguQCfgiBqgHQCYAHgiBhQgwCgBlERQAdBNAfBHQAKAwAMAsIqRAMg");
	this.shape_622.setTransform(66.1,247.4);

	this.shape_623 = new cjs.Shape();
	this.shape_623.graphics.f().s("#333333").ss(1,1,1).p("An3jxQD8hEDxgtQCdggBsgHQCUAKggBhQgrCiBkEOQAcBNAgBGQAHAvAJAqIqQAMIibglg");
	this.shape_623.setTransform(61.2,257.6);

	this.shape_624 = new cjs.Shape();
	this.shape_624.graphics.f("#FFFFFF").s().p("AkzFlIjEpWQD8hEDxgtQCdggBsgHQCUAKggBhQgrCiBkEOQAcBNAgBGQAHAvAJAqIqQAMg");
	this.shape_624.setTransform(61.2,257.6);

	this.shape_625 = new cjs.Shape();
	this.shape_625.graphics.f().s("#333333").ss(1,1,1).p("An2j2QD9hBDxgsQCdgeBsgHQCPAOgdBgQglCkBjEMQAcBLAfBHQAEAtAHAoIqQALIiXgpg");
	this.shape_625.setTransform(56.4,267.9);

	this.shape_626 = new cjs.Shape();
	this.shape_626.graphics.f("#FFFFFF").s().p("AkwFfIjGpUQD9hCDxgrQCcgfBtgHQCPAOgdBhQglCjBiEMQAcBLAgBHQAEAtAHAoIqQAMg");
	this.shape_626.setTransform(56.4,267.9);

	this.shape_627 = new cjs.Shape();
	this.shape_627.graphics.f().s("#333333").ss(1,1,1).p("An0j7QD8g+DygqQCbgeBugGQCLARgaBhQgiClBiEIQAdBMAeBGQACAsADAmIqOALIiTgug");
	this.shape_627.setTransform(51.5,278.1);

	this.shape_628 = new cjs.Shape();
	this.shape_628.graphics.f("#FFFFFF").s().p("AktFZIjGpUQD7g+DxgqQCcgdBugHQCKARgZBhQgiClBiEIQAcBNAfBFQACAsAEAmIqPAMg");
	this.shape_628.setTransform(51.5,278.1);

	this.shape_629 = new cjs.Shape();
	this.shape_629.graphics.f().s("#333333").ss(1,1,1).p("Anyj/QD8g8DxgoQCbgcBugGQCHAUgYBhQgcCmBhEFQAcBMAfBHQgCApABAlIqNAKIiQgzg");
	this.shape_629.setTransform(46.7,288.3);

	this.shape_630 = new cjs.Shape();
	this.shape_630.graphics.f("#FFFFFF").s().p("AkrFTIjHpSQD8g8DxgoQCbgcBugGQCHAUgYBhQgcCmBhEFQAcBMAfBHQgCApABAlIqNAKg");
	this.shape_630.setTransform(46.7,288.3);

	this.shape_631 = new cjs.Shape();
	this.shape_631.graphics.f().s("#333333").ss(1,1,1).p("AnzkEQD7g6DygmQCZgaBwgGQCCAYgUBgQgYCoBgECQAcBMAfBHQgEAngCAjIqNAKIiMg5g");
	this.shape_631.setTransform(42.1,298.6);

	this.shape_632 = new cjs.Shape();
	this.shape_632.graphics.f("#FFFFFF").s().p("AkrFMIjIpQQD8g6DxgmQCZgaBxgGQCBAYgUBgQgYCoBgECQAcBMAfBHQgEAngCAjIqNAKg");
	this.shape_632.setTransform(42.1,298.6);

	this.shape_633 = new cjs.Shape();
	this.shape_633.graphics.f().s("#333333").ss(1,1,1).p("An0kJQD7g2DyglQCZgZBxgGQB9AcgRBgQgUCpBfEAQAcBLAfBHQgHAlgFAiIqMAJIiIg9g");
	this.shape_633.setTransform(37.5,308.8);

	this.shape_634 = new cjs.Shape();
	this.shape_634.graphics.f("#FFFFFF").s().p("AkrFGIjJpPQD7g2DyglQCZgZBwgGQB+AbgSBhQgTCpBfD/QAcBMAfBGQgIAmgEAhIqMAKg");
	this.shape_634.setTransform(37.5,308.8);

	this.shape_635 = new cjs.Shape();
	this.shape_635.graphics.f().s("#333333").ss(1,1,1).p("An1kOQD7g0DygjQCYgYBygFQB4AfgPBgQgOCrBeD8QAcBLAfBHQgKAkgJAfIqKAKIiEhDg");
	this.shape_635.setTransform(33,319.1);

	this.shape_636 = new cjs.Shape();
	this.shape_636.graphics.f("#FFFFFF").s().p("AkrFAIjKpOQD7g0DygjQCXgYBzgFQB5AfgPBgQgPCrBeD8QAcBLAfBHIgSBDIqLAKg");
	this.shape_636.setTransform(33,319.1);

	this.shape_637 = new cjs.Shape();
	this.shape_637.graphics.f().s("#333333").ss(1,1,1).p("An2kTQD7gxDyghQCWgWB0gFQB0AigMBgQgKCsBdD6QAcBLAfBGQgNAigLAeIqKAJIiAhIg");
	this.shape_637.setTransform(28.4,329.3);

	this.shape_638 = new cjs.Shape();
	this.shape_638.graphics.f("#FFFFFF").s().p("AkrE6IjLpNQD7gxDyghQCWgXB0gFQB0AjgMBfQgKCsBdD7QAcBKAfBHIgYBAIqKAJg");
	this.shape_638.setTransform(28.4,329.3);

	this.shape_639 = new cjs.Shape();
	this.shape_639.graphics.f().s("#333333").ss(1,1,1).p("An3kYQD7gvDygfQCWgVB0gFQBwAmgKBgQgFCtBdD3QAcBLAeBHQgQAggOAcIqIAJIh9hNg");
	this.shape_639.setTransform(23.8,339.6);

	this.shape_640 = new cjs.Shape();
	this.shape_640.graphics.f("#FFFFFF").s().p("AkrE0IjMpMQD7guDygfQCWgWB0gFQBwAmgKBgQgFCtBdD4QAcBKAeBHIgeA8IqIAJg");
	this.shape_640.setTransform(23.8,339.6);

	this.shape_641 = new cjs.Shape();
	this.shape_641.graphics.f().s("#333333").ss(1,1,1).p("An4kdQD6grDzgdQCUgVB2gEQBrAogHBgQAACwBbDzQAcBLAfBHQgTAegRAbIqHAHIh5hSg");
	this.shape_641.setTransform(19.2,349.8);

	this.shape_642 = new cjs.Shape();
	this.shape_642.graphics.f("#FFFFFF").s().p("AkrEtIjNpKQD6grDzgdQCUgVB2gEQBrAogHBgQAACwBbDzQAcBLAfBHIgkA5IqHAHg");
	this.shape_642.setTransform(19.2,349.8);

	this.shape_643 = new cjs.Shape();
	this.shape_643.graphics.f().s("#333333").ss(1,1,1).p("An5kiQD6gpDzgbQCUgTB2gEQBnAsgEBgQAECxBbDwQAcBLAeBHQgWAcgTAZIqHAHIh1hXg");
	this.shape_643.setTransform(14.6,360);

	this.shape_644 = new cjs.Shape();
	this.shape_644.graphics.f("#FFFFFF").s().p("AkrEnIjOpJQD6gpDzgbQCUgTB2gEQBnAsgEBgQAECxBbDwQAcBLAeBHIgpA1IqHAHg");
	this.shape_644.setTransform(14.6,360);

	this.shape_645 = new cjs.Shape();
	this.shape_645.graphics.f().s("#333333").ss(1,1,1).p("An6knQD6glDygaQCUgSB3gEQBjAwgCBfQAKCyBZDvQAcBKAeBHQgYAagXAYIqGAGIhyhcg");
	this.shape_645.setTransform(10.1,370.3);

	this.shape_646 = new cjs.Shape();
	this.shape_646.graphics.f("#FFFFFF").s().p("AksEhIjOpIQD6gmDzgZQCSgSB4gEQBjAwgCBfQAJCzBaDuQAcBKAeBHIgvAyIqFAGg");
	this.shape_646.setTransform(10.1,370.3);

	this.shape_647 = new cjs.Shape();
	this.shape_647.graphics.f().s("#333333").ss(1,1,1).p("An7ksQD5gjDzgYQCSgQB5gEQBeAzABBgQAPCzBYDrQAcBKAeBHQgbAZgaAVIqFAHIhuhig");
	this.shape_647.setTransform(5.5,380.5);

	this.shape_648 = new cjs.Shape();
	this.shape_648.graphics.f("#FFFFFF").s().p("AksEaIjOpGQD4gjDzgYQCSgQB5gEQBeAzABBgQAOCzBZDrQAbBKAfBHIg1AuIqEAHg");
	this.shape_648.setTransform(5.5,380.5);

	this.shape_649 = new cjs.Shape();
	this.shape_649.graphics.f().s("#333333").ss(1,1,1).p("An8kxQD5ggD0gWQCRgQB5gCQBaA1AEBgQATC1BXDpQAcBKAeBGQgeAXgdAUIqEAFIhqhmg");
	this.shape_649.setTransform(0.9,390.8);

	this.shape_650 = new cjs.Shape();
	this.shape_650.graphics.f("#FFFFFF").s().p("AkrEUIjRpEQD6ghDygWQCRgPB6gDQBaA2AEBfQASC1BYDoQAcBLAeBGQgfAXgcAUIqEAGg");
	this.shape_650.setTransform(0.9,390.8);

	this.shape_651 = new cjs.Shape();
	this.shape_651.graphics.f().s("#333333").ss(1,1,1).p("An8k2QD4geD0gUQCPgOB7gDQBVA6AHBfQAYC3BWDlQAcBKAdBHQggAUggATIqCAGIhnhsg");
	this.shape_651.setTransform(-3.7,401);

	this.shape_652 = new cjs.Shape();
	this.shape_652.graphics.f("#FFFFFF").s().p("AksEOIjQpEQD4gdD0gVQCPgOB7gCQBVA5AHBgQAYC2BWDmQAcBJAdBHIhAAnIqCAGg");
	this.shape_652.setTransform(-3.7,401);

	this.shape_653 = new cjs.Shape();
	this.shape_653.graphics.f().s("#333333").ss(1,1,1).p("An+k6QD5gcDzgSQCQgMB7gDQBRA9AKBfQAcC4BWDjQAbBJAeBHQgkATgiAQIqCAFIhjhwg");
	this.shape_653.setTransform(-8.2,411.2);

	this.shape_654 = new cjs.Shape();
	this.shape_654.graphics.f("#FFFFFF").s().p("AksEIIjRpCQD4gcDzgSQCPgMB8gDQBRA9AJBfQAdC4BWDjQAbBJAdBHIhGAjIqBAFg");
	this.shape_654.setTransform(-8.2,411.2);

	this.shape_655 = new cjs.Shape();
	this.shape_655.graphics.f().s("#333333").ss(1,1,1).p("An+k/QD4gZDzgQQCOgMB9gCQBNBAAMBgQAhC5BUDfQAcBKAdBHQgmARglAPIqBAEIhfh1g");
	this.shape_655.setTransform(-12.8,421.5);

	this.shape_656 = new cjs.Shape();
	this.shape_656.graphics.f("#FFFFFF").s().p("AksECIjSpBQD4gZDzgQQCOgMB9gCQBNBAAMBgQAhC5BUDfQAcBKAdBHIhLAgIqBAEg");
	this.shape_656.setTransform(-12.8,421.5);

	this.shape_657 = new cjs.Shape();
	this.shape_657.graphics.f().s("#333333").ss(1,1,1).p("An/lEQD4gWD0gOQCNgKB9gDQBIBEAPBfQAmC7BUDdQAcBJAcBHQgpAPgoANIp/AEIhch7g");
	this.shape_657.setTransform(-17.4,431.7);

	this.shape_658 = new cjs.Shape();
	this.shape_658.graphics.f("#FFFFFF").s().p("AksD8IjTpAQD4gWD0gPQCNgJB9gDQBIBEAPBfQAmC7BUDdIA4CQQgpAPgoANIp/AEg");
	this.shape_658.setTransform(-17.4,431.7);

	this.shape_659 = new cjs.Shape();
	this.shape_659.graphics.f().s("#333333").ss(1,1,1).p("AoAlJQD3gTD0gNQCMgJB/gCQBEBHARBfQArC9BTDZQAbBJAdBHQgsANgrAMIp+AEIhYiAg");
	this.shape_659.setTransform(-22,442);

	this.shape_660 = new cjs.Shape();
	this.shape_660.graphics.f("#FFFFFF").s().p("AksD1IjUo+QD3gTD0gNQCMgJB/gCQBEBHARBfQArC9BTDZQAbBJAdBHIhXAZIp+AEg");
	this.shape_660.setTransform(-22,442);

	this.shape_661 = new cjs.Shape();
	this.shape_661.graphics.f().s("#333333").ss(1,1,1).p("AoBlOQD3gQD0gMQCLgHCBgBQA/BKAUBfQAvC+BSDXQAcBIAcBIQguALguAKIp+ACIhViEg");
	this.shape_661.setTransform(-26.5,452.2);

	this.shape_662 = new cjs.Shape();
	this.shape_662.graphics.f("#FFFFFF").s().p("AktDvIjUo9QD3gRD0gLQCLgHCAgCQA/BLAVBfQAvC+BSDWIA4CQIhcAVIp+AEg");
	this.shape_662.setTransform(-26.5,452.2);

	this.shape_663 = new cjs.Shape();
	this.shape_663.graphics.f().s("#333333").ss(1,1,1).p("AoClTQD3gOD1gJQCKgGCBgCQA7BOAWBfQA1C/BQDUQAcBJAcBHQgxAJgxAJIp8ACIhRiKg");
	this.shape_663.setTransform(-31.1,462.5);

	this.shape_664 = new cjs.Shape();
	this.shape_664.graphics.f("#FFFFFF").s().p("AksDoIjWo7QD3gND0gKQCLgGCAgCQA7BOAXBfQA0C/BRDUIA4CQIhiASIp9ADg");
	this.shape_664.setTransform(-31.1,462.5);

	this.shape_665 = new cjs.Shape();
	this.shape_665.graphics.f().s("#333333").ss(1,1,1).p("AoDlYQD2gLD1gHQCJgFCCgBQA3BRAaBfQA4DABQDSQAcBIAcBHQg1AIg0AGIp7ACIhNiOg");
	this.shape_665.setTransform(-35.7,472.7);

	this.shape_666 = new cjs.Shape();
	this.shape_666.graphics.f("#FFFFFF").s().p("AksDjIjXo7QD3gLD0gHQCJgFCCgBQA2BRAaBfQA5DABQDSIA4CPIhpAOIp7ACg");
	this.shape_666.setTransform(-35.7,472.7);

	this.shape_667 = new cjs.Shape();
	this.shape_667.graphics.f().s("#333333").ss(1,1,1).p("AoEldQD2gID1gFQCIgECDgBQAzBUAcBfQA+DBBODPQAcBJAcBHQg3AGg3AFIp7ABIhJiUg");
	this.shape_667.setTransform(-40.3,482.9);

	this.shape_668 = new cjs.Shape();
	this.shape_668.graphics.f("#FFFFFF").s().p("AksDcIjYo5QD2gID1gFQCJgECCgBQAyBUAdBfQA+DBBPDPIA3CQIhuALIp6ABg");
	this.shape_668.setTransform(-40.3,482.9);

	this.shape_669 = new cjs.Shape();
	this.shape_669.graphics.f().s("#333333").ss(1,1,1).p("AoFliQD2gFD1gEQCHgCCFgBQAtBYAfBfQBDDCBODMQAbBIAcBIQg6ADg6AEIp5ABIhGiZg");
	this.shape_669.setTransform(-44.9,493.2);

	this.shape_670 = new cjs.Shape();
	this.shape_670.graphics.f("#FFFFFF").s().p("AktDWIjYo4QD2gFD1gEQCHgCCFgBQAtBYAfBfQBDDCBODMIA3CQIh0AHIp5ABg");
	this.shape_670.setTransform(-44.9,493.2);

	this.shape_671 = new cjs.Shape();
	this.shape_671.graphics.f().s("#333333").ss(1,1,1).p("AoGlnQD2gCD2gCQCGgCCFAAQApBbAiBfQBHDDBNDKQAbBIAcBHQg9ACg8ACIp5ABIhCieg");
	this.shape_671.setTransform(-49.4,503.4);

	this.shape_672 = new cjs.Shape();
	this.shape_672.graphics.f("#FFFFFF").s().p("AktDQIjZo3IHrgEIELgCQApBbAjBfQBGDDBNDKIA4CPIh5AEIp5ABg");
	this.shape_672.setTransform(-49.4,503.4);

	this.shape_673 = new cjs.Shape();
	this.shape_673.graphics.f().s("#333333").ss(1,1,1).p("AoHlsIL3AAIEYLZIr3AAg");
	this.shape_673.setTransform(-54,513.7);

	this.shape_674 = new cjs.Shape();
	this.shape_674.graphics.f("#FFFFFF").s().p("AjvFtIkYrYIL3AAIEYLYg");
	this.shape_674.setTransform(-54,513.7);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[]}).to({state:[{t:this.shape_518},{t:this.shape_517}]},11).to({state:[{t:this.shape_520},{t:this.shape_519}]},1).to({state:[{t:this.shape_522},{t:this.shape_521}]},1).to({state:[{t:this.shape_524},{t:this.shape_523}]},1).to({state:[{t:this.shape_526},{t:this.shape_525}]},1).to({state:[{t:this.shape_528},{t:this.shape_527}]},1).to({state:[{t:this.shape_530},{t:this.shape_529}]},1).to({state:[{t:this.shape_532},{t:this.shape_531}]},1).to({state:[{t:this.shape_534},{t:this.shape_533}]},1).to({state:[{t:this.shape_536},{t:this.shape_535}]},1).to({state:[{t:this.shape_538},{t:this.shape_537}]},1).to({state:[{t:this.shape_540},{t:this.shape_539}]},1).to({state:[{t:this.shape_542},{t:this.shape_541}]},1).to({state:[{t:this.shape_544},{t:this.shape_543}]},1).to({state:[{t:this.shape_546},{t:this.shape_545}]},1).to({state:[{t:this.shape_548},{t:this.shape_547}]},1).to({state:[{t:this.shape_550},{t:this.shape_549}]},1).to({state:[{t:this.shape_552},{t:this.shape_551}]},1).to({state:[{t:this.shape_554},{t:this.shape_553}]},1).to({state:[{t:this.shape_556},{t:this.shape_555}]},1).to({state:[{t:this.shape_558},{t:this.shape_557}]},1).to({state:[{t:this.shape_560},{t:this.shape_559}]},1).to({state:[{t:this.shape_562},{t:this.shape_561}]},1).to({state:[{t:this.shape_564},{t:this.shape_563}]},1).to({state:[{t:this.shape_566},{t:this.shape_565}]},1).to({state:[{t:this.shape_568},{t:this.shape_567}]},1).to({state:[{t:this.shape_570},{t:this.shape_569}]},1).to({state:[{t:this.shape_572},{t:this.shape_571}]},1).to({state:[{t:this.shape_574},{t:this.shape_573}]},1).to({state:[{t:this.shape_576},{t:this.shape_575}]},1).to({state:[{t:this.shape_578},{t:this.shape_577}]},1).to({state:[{t:this.shape_580},{t:this.shape_579}]},1).to({state:[{t:this.shape_582},{t:this.shape_581}]},1).to({state:[{t:this.shape_584},{t:this.shape_583}]},1).to({state:[{t:this.shape_586},{t:this.shape_585}]},1).to({state:[{t:this.shape_588},{t:this.shape_587}]},1).to({state:[{t:this.shape_590},{t:this.shape_589}]},1).to({state:[{t:this.shape_592},{t:this.shape_591}]},1).to({state:[{t:this.shape_594},{t:this.shape_593}]},1).to({state:[{t:this.shape_596},{t:this.shape_595}]},1).to({state:[{t:this.shape_598},{t:this.shape_597}]},1).to({state:[{t:this.shape_600},{t:this.shape_599}]},1).to({state:[{t:this.shape_602},{t:this.shape_601}]},1).to({state:[{t:this.shape_604},{t:this.shape_603}]},1).to({state:[{t:this.shape_606},{t:this.shape_605}]},1).to({state:[{t:this.shape_608},{t:this.shape_607}]},1).to({state:[{t:this.shape_610},{t:this.shape_609}]},1).to({state:[{t:this.shape_612},{t:this.shape_611}]},1).to({state:[{t:this.shape_614},{t:this.shape_613}]},1).to({state:[{t:this.shape_616},{t:this.shape_615}]},1).to({state:[{t:this.shape_618},{t:this.shape_617}]},1).to({state:[{t:this.shape_620},{t:this.shape_619}]},1).to({state:[{t:this.shape_622},{t:this.shape_621}]},1).to({state:[{t:this.shape_624},{t:this.shape_623}]},1).to({state:[{t:this.shape_626},{t:this.shape_625}]},1).to({state:[{t:this.shape_628},{t:this.shape_627}]},1).to({state:[{t:this.shape_630},{t:this.shape_629}]},1).to({state:[{t:this.shape_632},{t:this.shape_631}]},1).to({state:[{t:this.shape_634},{t:this.shape_633}]},1).to({state:[{t:this.shape_636},{t:this.shape_635}]},1).to({state:[{t:this.shape_638},{t:this.shape_637}]},1).to({state:[{t:this.shape_640},{t:this.shape_639}]},1).to({state:[{t:this.shape_642},{t:this.shape_641}]},1).to({state:[{t:this.shape_644},{t:this.shape_643}]},1).to({state:[{t:this.shape_646},{t:this.shape_645}]},1).to({state:[{t:this.shape_648},{t:this.shape_647}]},1).to({state:[{t:this.shape_650},{t:this.shape_649}]},1).to({state:[{t:this.shape_652},{t:this.shape_651}]},1).to({state:[{t:this.shape_654},{t:this.shape_653}]},1).to({state:[{t:this.shape_656},{t:this.shape_655}]},1).to({state:[{t:this.shape_658},{t:this.shape_657}]},1).to({state:[{t:this.shape_660},{t:this.shape_659}]},1).to({state:[{t:this.shape_662},{t:this.shape_661}]},1).to({state:[{t:this.shape_664},{t:this.shape_663}]},1).to({state:[{t:this.shape_666},{t:this.shape_665}]},1).to({state:[{t:this.shape_668},{t:this.shape_667}]},1).to({state:[{t:this.shape_670},{t:this.shape_669}]},1).to({state:[{t:this.shape_672},{t:this.shape_671}]},1).to({state:[{t:this.shape_674},{t:this.shape_673}]},1).to({state:[]},1).wait(36));

	// 书堆
	this.shape_675 = new cjs.Shape();
	this.shape_675.graphics.f().s("#003300").ss(1,1,1).p("ArEq2IAABPIW1AAIAAhaIh9AAIAAg3I21AAIAABCgAsbplIW2AAIAABYI22AAgAJ0rBI04AAIAAALAKbmTIAAgZI0PAAIAAgLAKbmTIAACaI22AAIAAi+ICnAAIAAhPIW2AAIAABzgAKbhvIAAB+I22AAIAAiJIBXAAIVfAAIAAALIBWAAIAAhCIh9AAIAAhDI21AAIAABDIB9AAIAAA3AKbBXIAAC6I22AAIAAjOICnAAIAAgvIW2AAIAABDgAJ0FFIAAgvI21AAIAABCIB9AAIAABXIW1AAIAAhqIh9AAI04AAIAAATAsbG0IW2AAIAABDI22AAgAKbKHI0PAAIAAgUAKbKHIAAByI22AAIAAiGICnAAIAAh3IW2AAIAACLgAp0BDIUPAAIAAAUArEixIU4AA");
	this.shape_675.setTransform(204.3,636);

	this.shape_676 = new cjs.Shape();
	this.shape_676.graphics.lf(["#FFFFFF","#FFE5C3"],[0.153,1],73.2,0,-73.1,0).s().p("AI0BFI0OAAIAAgUIAAh1IW1AAIAACJg");
	this.shape_676.setTransform(214.6,693.8);

	this.shape_677 = new cjs.Shape();
	this.shape_677.graphics.f("#FFFFFF").s().p("AraBCIAAiDICnAAIAAATIUOAAIAABwg");
	this.shape_677.setTransform(197.9,705.5);

	this.shape_678 = new cjs.Shape();
	this.shape_678.graphics.f("#66FFCC").s().p("AsFBYIAAhCIW1AAIAABCgAqvARIAAhVIAAgUIU5AAIB9AAIAABpg");
	this.shape_678.setTransform(202.2,677.5);

	this.shape_679 = new cjs.Shape();
	this.shape_679.graphics.lf(["#FFFFFF","#FFE5C3"],[0.153,1],73.2,0,-73.1,0).s().p("AraAhIAAhBIW1AAIAAAtI04AAIAAAUg");
	this.shape_679.setTransform(194.1,667.2);

	this.shape_680 = new cjs.Shape();
	this.shape_680.graphics.lf(["#FFFFFF","#FFE5C3"],[0.153,1],73.2,0,-73.1,0).s().p("ApdAhIh9AAIAAhBIW1AAIAABBg");
	this.shape_680.setTransform(194.1,614.8);

	this.shape_681 = new cjs.Shape();
	this.shape_681.graphics.lf(["#FFFFFF","#FFE5C3"],[0.153,1],73.2,0,-73.1,0).s().p("AKFAhIAAgLI1fAAIAAg2IU4AAIB9AAIAABBg");
	this.shape_681.setTransform(206.6,621.5);

	this.shape_682 = new cjs.Shape();
	this.shape_682.graphics.lf(["#FFFFFF","#FFE5C3"],[0.153,1],73.2,0,-73.1,0).s().p("AraBmIAAjLICnAAIUOAAIAAATIAAC4g");
	this.shape_682.setTransform(197.9,653.1);

	this.shape_683 = new cjs.Shape();
	this.shape_683.graphics.lf(["#FFFFFF","#FFE5C3"],[0.153,1],73.2,0,-73.1,0).s().p("AI0AhIAAgUI0OAAIAAgtIW1AAIAABBg");
	this.shape_683.setTransform(214.6,641.4);

	this.shape_684 = new cjs.Shape();
	this.shape_684.graphics.f("#FFFFCC").s().p("AraDjIAAiKIBXAAIVeAAIAAALIAAB/gAraglIAAi9ICnAAIAAALIUOAAIAAAZIAACZg");
	this.shape_684.setTransform(197.9,614.8);

	this.shape_685 = new cjs.Shape();
	this.shape_685.graphics.lf(["#FFFFFF","#FFE5C3"],[0.153,1],73.2,0,-73.1,0).s().p("AI0A5IAAgZI0OAAIAAgLIAAhNIW1AAIAABxg");
	this.shape_685.setTransform(214.6,589.8);

	this.shape_686 = new cjs.Shape();
	this.shape_686.graphics.f("#CCFFFF").s().p("AryB1IAAhYIW1AAIAABYgAqcAbIAAhNIAAgLIU5AAI05AAIAAALIh9AAIAAhCIW2AAIAAA3IB9AAIAABYg");
	this.shape_686.setTransform(200.3,571.7);

	this.shape_687 = new cjs.Shape();
	this.shape_687.graphics.f().s("#000033").ss(1,1,1).p("Am8qcIAAgzIQKAAIAAA+IhYAAAm8qcIOyAAIAAALIAABLIwKAAIAAhWgAIzo5IwKAAIAAA+IQKAAgAnXl9IAAgRIOUAAIAAgKIAAhTIwKAAIAABuIB2AAIAACKIQKAAIAAilIh2AAAm8ioIAAg/IQKAAIAAA/IhYAAIAAA/IvNAAIAABtIQKAAIAAhtIg9AAAnXhpIg9AAIAAg/IBYAAAm8E8IAAg1IQKAAIAAA/IhYAAIAABKIwKAAIAAhUIBYAAIOyAAIAAAKAnXBSIAACoIQKAAIAAixIh2AAIuUAAgAnXJaIAAB2IQKAAIAAh+Ih2AAIAAhmIwKAAIAABuIB2AAIOUAAIAAgIAIzGdIwKAAIAAA/IQKAAgAG9BJIAAg2IwKAAIAAA/IB2AAAH2ioIuyAA");
	this.shape_687.setTransform(133,602.2);

	this.shape_688 = new cjs.Shape();
	this.shape_688.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-51.7,0,51.9,0).s().p("AmPA3Ih2AAIAAhtIQKAAIAABlIAAAIg");
	this.shape_688.setTransform(125.7,657);

	this.shape_689 = new cjs.Shape();
	this.shape_689.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-51.8,0,51.7,0).s().p("AoEAqIAAhTIBYAAIOxAAIAAALIAABIg");
	this.shape_689.setTransform(131.4,638.1);

	this.shape_690 = new cjs.Shape();
	this.shape_690.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-51.7,0,51.8,0).s().p("AoFA+IAAh0IOUAAIAAgIIB2AAIAAB8g");
	this.shape_690.setTransform(137.5,668);

	this.shape_691 = new cjs.Shape();
	this.shape_691.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-51.7,0,51.8,0).s().p("AoFAfIAAg9IQKAAIAAA9g");
	this.shape_691.setTransform(137.5,646.7);

	this.shape_692 = new cjs.Shape();
	this.shape_692.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-51.7,0,51.8,0).s().p("AGtAfIAAgKIuxAAIAAgzIQKAAIAAA9g");
	this.shape_692.setTransform(140.3,631.8);

	this.shape_693 = new cjs.Shape();
	this.shape_693.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-51.7,0,51.9,0).s().p("AoFAfIAAg9IQKAAIAAA0IuUAAIAAAJg");
	this.shape_693.setTransform(125.7,607.4);

	this.shape_694 = new cjs.Shape();
	this.shape_694.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-51.7,0,51.8,0).s().p("AoFBYIAAimIAAgJIOUAAIB2AAIAACvg");
	this.shape_694.setTransform(137.5,618.4);

	this.shape_695 = new cjs.Shape();
	this.shape_695.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-51.8,0,51.7,0).s().p("AnIAfIg8AAIAAg9IBYAAIOxAAIAAA9g");
	this.shape_695.setTransform(131.4,588.5);

	this.shape_696 = new cjs.Shape();
	this.shape_696.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-51.7,0,51.8,0).s().p("AoFA3IAAhtIPOAAIA8AAIAABtg");
	this.shape_696.setTransform(137.5,597.1);

	this.shape_697 = new cjs.Shape();
	this.shape_697.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-51.7,0,51.8,0).s().p("AGtAfIuxAAIAAg9IQKAAIAAA9g");
	this.shape_697.setTransform(140.3,582.2);

	this.shape_698 = new cjs.Shape();
	this.shape_698.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-51.7,0,51.8,0).s().p("AoFBSIAAiIIAAgRIOUAAIAAgKIB2AAIAACjg");
	this.shape_698.setTransform(137.5,569.5);

	this.shape_699 = new cjs.Shape();
	this.shape_699.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-51.7,0,51.9,0).s().p("AoFA2IAAhrIQKAAIAABRIAAAJIuUAAIAAARg");
	this.shape_699.setTransform(125.7,558.5);

	this.shape_700 = new cjs.Shape();
	this.shape_700.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-51.7,0,51.8,0).s().p("AoFAfIAAg9IQKAAIAAA9g");
	this.shape_700.setTransform(137.5,548.3);

	this.shape_701 = new cjs.Shape();
	this.shape_701.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-51.7,0,51.8,0).s().p("AGtAfIAAgLIuxAAIAAgyIQKAAIAAA9g");
	this.shape_701.setTransform(140.3,533.3);

	this.shape_702 = new cjs.Shape();
	this.shape_702.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-51.8,0,51.7,0).s().p("AoEAqIAAhTIBYAAIOxAAIAAAKIAABJg");
	this.shape_702.setTransform(131.4,539.6);

	this.shape_703 = new cjs.Shape();
	this.shape_703.graphics.f().s("#000033").ss(1,1,1).p("AnOpdIAAgvIQ1AAIAAA5IhdAAIAABEIw0AAIAAhOIBcAAIPYAAIAAAKAJKoEIw1AAIAAA5IQ1AAgAnrlZIAAB9IQ1AAIAAiVIh7AAIAAhLIw1AAIAABjIB7AAIAAgPIO6AAIAAgJAHPBCIAAgwIw1AAIAAA5IB7AAIAACYIQ1AAIAAihIh7AAIu6AAIAAAJAnrheIAABiIQ1AAIAAhiIhAAAIv1AAIg/AAIAAg5IBcAAIAAg6IQ1AAIAAA6IhdAAIAAA5AHPIbIAAhdIw1AAIAABkIB7AAIAABrIQ1AAIAAhygAnrIiIO6AAIAAgHAnOEfIAAgwIQ1AAIAAA5IhdAAIAABDIw0AAIAAhMIBcAAIPYAAIAAAJAJKF3Iw1AAIAAA5IQ1AAgAIKiXIvYAA");
	this.shape_703.setTransform(404.6,630.8);

	this.shape_704 = new cjs.Shape();
	this.shape_704.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-53.9,0,54,0).s().p("AoaA4IAAhpIO6AAIAAgHIB7AAIAABwg");
	this.shape_704.setTransform(409.3,690.5);

	this.shape_705 = new cjs.Shape();
	this.shape_705.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-53.9,0,54,0).s().p("AmfAxIh7AAIAAhhIQ1AAIAABbIAAAGg");
	this.shape_705.setTransform(397,680.4);

	this.shape_706 = new cjs.Shape();
	this.shape_706.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-53.9,0,54,0).s().p("AoaAcIAAg3IQ1AAIAAA3g");
	this.shape_706.setTransform(409.3,671.2);

	this.shape_707 = new cjs.Shape();
	this.shape_707.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-53.9,0,53.9,0).s().p("AoaAmIAAhLIBcAAIPZAAIAAAKIAABBg");
	this.shape_707.setTransform(403,663.3);

	this.shape_708 = new cjs.Shape();
	this.shape_708.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-53.9,0,54,0).s().p("AG/AcIAAgJIvZAAIAAguIQ1AAIAAA3g");
	this.shape_708.setTransform(412.2,657.6);

	this.shape_709 = new cjs.Shape();
	this.shape_709.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-53.9,0,54,0).s().p("AoaAcIAAg3IQ1AAIAAAvIu6AAIAAAIg");
	this.shape_709.setTransform(397,635.5);

	this.shape_710 = new cjs.Shape();
	this.shape_710.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-53.9,0,54,0).s().p("AoaBQIAAiXIAAgIIO6AAIB7AAIAACfg");
	this.shape_710.setTransform(409.3,645.5);

	this.shape_711 = new cjs.Shape();
	this.shape_711.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-53.9,0,54,0).s().p("AoaAxIAAhiIP1AAIBAAAIAABig");
	this.shape_711.setTransform(409.3,626.2);

	this.shape_712 = new cjs.Shape();
	this.shape_712.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-53.9,0,54,0).s().p("AG/AcIvZAAIAAg3IQ1AAIAAA3g");
	this.shape_712.setTransform(412.2,612.6);

	this.shape_713 = new cjs.Shape();
	this.shape_713.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-53.9,0,53.9,0).s().p("AnaAcIhAAAIAAg3IBcAAIPZAAIAAA3g");
	this.shape_713.setTransform(403,618.4);

	this.shape_714 = new cjs.Shape();
	this.shape_714.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-53.9,0,54,0).s().p("AoaBKIAAh7IAAgPIO6AAIAAgJIB7AAIAACTg");
	this.shape_714.setTransform(409.3,601.2);

	this.shape_715 = new cjs.Shape();
	this.shape_715.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-53.9,0,54,0).s().p("AoaAxIAAhhIQ1AAIAABJIAAAJIu6AAIAAAPg");
	this.shape_715.setTransform(397,591.2);

	this.shape_716 = new cjs.Shape();
	this.shape_716.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-53.9,0.1,54,0.1).s().p("AG/AcIAAgKIvZAAIAAgtIQ1AAIAAA3g");
	this.shape_716.setTransform(412.2,568.3);

	this.shape_717 = new cjs.Shape();
	this.shape_717.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-53.9,0,53.9,0).s().p("AoaAmIAAhLIBcAAIPZAAIAAAKIAABBg");
	this.shape_717.setTransform(403,574);

	this.shape_718 = new cjs.Shape();
	this.shape_718.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-53.9,0,54,0).s().p("AoaAcIAAg3IQ1AAIAAA3g");
	this.shape_718.setTransform(409.3,581.9);

	this.shape_719 = new cjs.Shape();
	this.shape_719.graphics.f().s("#000000").ss(1,1,1).p("AJxr9IAABWI0IAAIAAhjIBtAAIAAg8IUJAAIAABJgAK9qkI0JAAIAABhIUJAAgAIqnbIAAhgI0IAAIAAB/ICSAAIAAgUIR2AAgAoqjDIAAhSIUJAAIAABaIhuAAIybAAgApMh6IhLAAIAAhJIBtAAAJxiGIy9AAIAAAMIAACLIUJAAIAAiXgApMm8IAACgIUJAAIAAi/IiTAAApMBgIAADEIUJAAIAAjPIiTAAIAAg+I0IAAIAABJgAJxGGIAAgQIybAAIAAgGAJxGGIAABNI0IAAIAAhjIBtAAIAAhGIUJAAIAABcgAIqBVIx2AAIAAALApMK+IAACJIUJAAIAAiSIiTAAIAAh3I0IAAIAACAICSAAIR2AAIAAgJAK9HVI0JAAIAABiIUJAAgAoqsKISbAAIAAANAJxi7IAAA1");
	this.shape_719.setTransform(318.1,600.3);

	this.shape_720 = new cjs.Shape();
	this.shape_720.graphics.f("#FFFFCC").s().p("Ao7CEIAAiHIR2AAIAAgJIAAAJIx2AAIiSAAIAAiAIUIAAIAAB3ICTAAIAACQg");
	this.shape_720.setTransform(316.4,671);

	this.shape_721 = new cjs.Shape();
	this.shape_721.graphics.lf(["#FFFFFF","#A0D4CA"],[0.365,1],-5.6,-155.7,-5.6,88).s().p("AqEAxIAAhgIUJAAIAABgg");
	this.shape_721.setTransform(323.7,652.2);

	this.shape_722 = new cjs.Shape();
	this.shape_722.graphics.lf(["#FFFFFF","#A0D4CA"],[0.365,1],-9,-125.8,-9,105.3).s().p("AIWAuIAAgRIyaAAIAAgGIAAhDIUJAAIAABag");
	this.shape_722.setTransform(327.1,634.8);

	this.shape_723 = new cjs.Shape();
	this.shape_723.graphics.f("#CCFFFF").s().p("AqGDeIAAhjIBtAAIAAAGISaAAIAAAQIAABNgAo7AuIAAjBIAAgMIR2AAIx2AAIAAAMIiSAAIAAhJIUIAAIAAA9ICTAAIAADNg");
	this.shape_723.setTransform(316.4,624.8);

	this.shape_724 = new cjs.Shape();
	this.shape_724.graphics.f("#99FFCC").s().p("AqEBMIAAiLIAAgMIS8AAIBNAAIAACXg");
	this.shape_724.setTransform(323.7,594.4);

	this.shape_725 = new cjs.Shape();
	this.shape_725.graphics.f("#9999CC").s().p("AqDAkIAAhHIBtAAIAAAIISaAAIAAAzIy8AAIAAAMg");
	this.shape_725.setTransform(316.1,584.3);

	this.shape_726 = new cjs.Shape();
	this.shape_726.graphics.lf(["#FFFFFF","#A0D4CA"],[0.365,1],-9,-52.4,-9,174.2).s().p("AIWAtIyaAAIAAgJIAAhQIUJAAIAABZg");
	this.shape_726.setTransform(327.1,576.9);

	this.shape_727 = new cjs.Shape();
	this.shape_727.graphics.f("#99FFFF").s().p("AqEBfIAAieIAAgUIR2AAIAAgLICTAAIAAC9g");
	this.shape_727.setTransform(323.7,562.2);

	this.shape_728 = new cjs.Shape();
	this.shape_728.graphics.f("#66CCFF").s().p("AqnCnIAAiAIUIAAIAABhIAAALIx1AAIAAAUgApghCIAAhjIBuAAISaAAIAAAMIAABXg");
	this.shape_728.setTransform(312.5,539.1);

	this.shape_729 = new cjs.Shape();
	this.shape_729.graphics.f("#CCCCCC").s().p("AqEAwIAAhfIUJAAIAABfg");
	this.shape_729.setTransform(323.7,537.4);

	this.shape_730 = new cjs.Shape();
	this.shape_730.graphics.lf(["#FFFFFF","#A0D4CA"],[0.365,1],-9,14.3,-9,198.7).s().p("AIWAkIAAgNIyaAAIAAg6IUJAAIAABHg");
	this.shape_730.setTransform(327.1,520);

	this.shape_731 = new cjs.Shape();
	this.shape_731.graphics.f().s("#000000").ss(1,1,1).p("AoqtBIAAhBIUJAAIAABPIhuAAAoqtBISbAAIAAAOIAABcI0IAAIAAhqgAK9rUI0JAAIAABoIUJAAgAIqn9IAAhnI0IAAIAACIICSAAIAAgVIR2AAgApMncIAACsIUJAAIAAjNIiTAAAJxjIIybAAIAAgKIAAhXIUJAAIAABhIhuAAIAAA4Iy9AAIAAANIhLAAIAAhPIBtAAAIqBaIAAhCI0IAAIAABPICSAAIAADRIUJAAIAAjeIiTAAIx2AAIAAANApMiDIAACVIUJAAIAAiiIhMAAAJxGiIAAgRIybAAIAAgHAJxGiIAABSI0IAAIAAhqIBtAAIAAhLIUJAAIAABjgAK9H2I0JAAIAABpIUJAAgApMLvIR2AAIAAgJApMLvIAACUIUJAAIAAidIiTAAIAAiAI0IAAIAACJg");
	this.shape_731.setTransform(74.8,574);

	this.shape_732 = new cjs.Shape();
	this.shape_732.graphics.f("#FFFFCC").s().p("Ao6COIAAiSIR1AAIAAgJIAAAJIx1AAIiTAAIAAiJIUIAAIAACAICTAAIAACbg");
	this.shape_732.setTransform(73.1,649.7);

	this.shape_733 = new cjs.Shape();
	this.shape_733.graphics.lf(["#FFFFFF","#A0D4CA"],[0.365,1],-9,-134.7,-9,112.8).s().p("AIWAxIAAgRIyaAAIAAgHIAAhJIUJAAIAABhg");
	this.shape_733.setTransform(83.8,610.9);

	this.shape_734 = new cjs.Shape();
	this.shape_734.graphics.lf(["#FFFFFF","#A0D4CA"],[0.365,1],-5.6,-166.8,-5.6,94.2).s().p("AqEA0IAAhnIUJAAIAABng");
	this.shape_734.setTransform(80.4,629.5);

	this.shape_735 = new cjs.Shape();
	this.shape_735.graphics.f("#CCFFFF").s().p("AqGDtIAAhpIBtAAIAAAGISbAAIAAARIAABSgAo6AyIAAjQIAAgMIR1AAIx1AAIAAAMIiTAAIAAhOIUIAAIAABCICTAAIAADcg");
	this.shape_735.setTransform(73.1,600.2);

	this.shape_736 = new cjs.Shape();
	this.shape_736.graphics.lf(["#FFFFFF","#A0D4CA"],[0.365,1],-9,-56.1,-9,186.6).s().p("AIWAwIyaAAIAAgJIAAhWIUJAAIAABfg");
	this.shape_736.setTransform(83.8,549);

	this.shape_737 = new cjs.Shape();
	this.shape_737.graphics.f("#9999CC").s().p("AqDAnIAAhNIBtAAIAAAJISaAAIAAA3Iy8AAIAAANg");
	this.shape_737.setTransform(72.8,556.8);

	this.shape_738 = new cjs.Shape();
	this.shape_738.graphics.f("#CCCCCC").s().p("AqEA0IAAhnIUJAAIAABng");
	this.shape_738.setTransform(80.4,506.6);

	this.shape_739 = new cjs.Shape();
	this.shape_739.graphics.f("#FFFFFF").s().p("Ao6GqIAAiWIAAgOIS8AAIBMAAIAACkgAo6BmIAAiqIAAgUIR1AAIAAgMIAAAMIx1AAIAAAUIiTAAIAAiIIUIAAIAABoICTAAIAADKgAqGk/IAAhqIBtAAISbAAIAAAOIAABcg");
	this.shape_739.setTransform(73.1,533.2);

	this.shape_740 = new cjs.Shape();
	this.shape_740.graphics.lf(["#FFFFFF","#A0D4CA"],[0.365,1],-9,15.3,-9,212.8).s().p("AIWAnIAAgOIyaAAIAAg/IUJAAIAABNg");
	this.shape_740.setTransform(83.8,488);

	this.shape_741 = new cjs.Shape();
	this.shape_741.graphics.f().s("#000033").ss(1,1,1).p("AHmo5It9AAIAAA+IN9AAgAmAqcIAAgzIN+AAIAAA+IhMAAAmAqcIMyAAIAAALIAABLIt+AAIAAhWgAmXl9IAACKIN9AAIAAilIhmAAAmXl9IAAgRIMXAAIAAgKIAAhTIt9AAIAABugAmXhpIAABtIN9AAIAAhtIg0AAItJAAIg1AAIAAg/IBMAAIAAg/IN+AAIAAA/IhMAAIAAA/AGABJIAAg2It9AAIAAA/IBmAAIAACoIN9AAIAAixIhmAAIsXAAIAAAJAGAJSIAAhmIt9AAIAABuIBmAAIAAB2IN9AAIAAh+gAHmGdIt9AAIAAA/IN9AAgAmAE8IAAg1IN+AAIAAA/IhMAAIAABKIt+AAIAAhUIBMAAIMyAAIAAAKAmXJaIMXAAIAAgIAGyioIsyAA");
	this.shape_741.setTransform(390,518.6);

	this.shape_742 = new cjs.Shape();
	this.shape_742.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-44.7,0,44.8,0).s().p("AlYA2IhmAAIAAhrIN9AAIAABkIAAAHg");
	this.shape_742.setTransform(383.7,573.3);

	this.shape_743 = new cjs.Shape();
	this.shape_743.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-44.7,0,44.8,0).s().p("Am+AfIAAg9IN9AAIAAA9g");
	this.shape_743.setTransform(393.9,563.1);

	this.shape_744 = new cjs.Shape();
	this.shape_744.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-44.7,0,44.8,0).s().p("Am+A/IAAh1IMXAAIAAgHIBmAAIAAB8g");
	this.shape_744.setTransform(393.9,584.4);

	this.shape_745 = new cjs.Shape();
	this.shape_745.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-44.7,0,44.8,0).s().p("AFzAfIAAgLIsxAAIAAgyIN9AAIAAA9g");
	this.shape_745.setTransform(396.3,548.1);

	this.shape_746 = new cjs.Shape();
	this.shape_746.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-44.8,0,44.7,0).s().p("Am+AqIAAhTIBMAAIMxAAIAAALIAABIg");
	this.shape_746.setTransform(388.7,554.4);

	this.shape_747 = new cjs.Shape();
	this.shape_747.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-44.7,0,44.8,0).s().p("Am+BYIAAimIAAgJIMXAAIBmAAIAACvg");
	this.shape_747.setTransform(393.9,534.8);

	this.shape_748 = new cjs.Shape();
	this.shape_748.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-44.7,0,44.8,0).s().p("Am+AfIAAg9IN9AAIAAAzIsXAAIAAAKg");
	this.shape_748.setTransform(383.7,523.7);

	this.shape_749 = new cjs.Shape();
	this.shape_749.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-44.8,0,44.7,0).s().p("AmKAfIg0AAIAAg9IBMAAIMxAAIAAA9g");
	this.shape_749.setTransform(388.7,504.8);

	this.shape_750 = new cjs.Shape();
	this.shape_750.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-44.7,0,44.8,0).s().p("AFzAfIsxAAIAAg9IN9AAIAAA9g");
	this.shape_750.setTransform(396.3,498.5);

	this.shape_751 = new cjs.Shape();
	this.shape_751.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-44.7,0,44.8,0).s().p("Am+A3IAAhtINJAAIA0AAIAABtg");
	this.shape_751.setTransform(393.9,513.5);

	this.shape_752 = new cjs.Shape();
	this.shape_752.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-44.7,0,44.8,0).s().p("Am+A2IAAhrIN9AAIAABRIAAAJIsXAAIAAARg");
	this.shape_752.setTransform(383.7,474.8);

	this.shape_753 = new cjs.Shape();
	this.shape_753.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-44.7,0,44.8,0).s().p("Am+BSIAAiIIAAgRIMXAAIAAgKIBmAAIAACjg");
	this.shape_753.setTransform(393.9,485.9);

	this.shape_754 = new cjs.Shape();
	this.shape_754.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-44.8,0,44.7,0).s().p("Am+ArIAAhVIBMAAIMxAAIAAAMIAABJg");
	this.shape_754.setTransform(388.7,456);

	this.shape_755 = new cjs.Shape();
	this.shape_755.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-44.7,0,44.8,0).s().p("AFzAfIAAgLIsxAAIAAgyIN9AAIAAA9g");
	this.shape_755.setTransform(396.3,449.6);

	this.shape_756 = new cjs.Shape();
	this.shape_756.graphics.lf(["#FFFFFF","#B2DBE3"],[0.431,1],-44.7,0,44.8,0).s().p("Am+AfIAAg9IN9AAIAAA9g");
	this.shape_756.setTransform(393.9,464.6);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_756},{t:this.shape_755},{t:this.shape_754},{t:this.shape_753},{t:this.shape_752},{t:this.shape_751},{t:this.shape_750},{t:this.shape_749},{t:this.shape_748},{t:this.shape_747},{t:this.shape_746},{t:this.shape_745},{t:this.shape_744},{t:this.shape_743},{t:this.shape_742},{t:this.shape_741},{t:this.shape_740},{t:this.shape_739},{t:this.shape_738},{t:this.shape_737},{t:this.shape_736},{t:this.shape_735},{t:this.shape_734},{t:this.shape_733},{t:this.shape_732},{t:this.shape_731},{t:this.shape_730},{t:this.shape_729},{t:this.shape_728},{t:this.shape_727},{t:this.shape_726},{t:this.shape_725},{t:this.shape_724},{t:this.shape_723},{t:this.shape_722},{t:this.shape_721},{t:this.shape_720},{t:this.shape_719},{t:this.shape_718},{t:this.shape_717},{t:this.shape_716},{t:this.shape_715},{t:this.shape_714},{t:this.shape_713},{t:this.shape_712},{t:this.shape_711},{t:this.shape_710},{t:this.shape_709},{t:this.shape_708},{t:this.shape_707},{t:this.shape_706},{t:this.shape_705},{t:this.shape_704},{t:this.shape_703},{t:this.shape_702},{t:this.shape_701},{t:this.shape_700},{t:this.shape_699},{t:this.shape_698},{t:this.shape_697},{t:this.shape_696},{t:this.shape_695},{t:this.shape_694},{t:this.shape_693},{t:this.shape_692},{t:this.shape_691},{t:this.shape_690},{t:this.shape_689},{t:this.shape_688},{t:this.shape_687},{t:this.shape_686},{t:this.shape_685},{t:this.shape_684},{t:this.shape_683},{t:this.shape_682},{t:this.shape_681},{t:this.shape_680},{t:this.shape_679},{t:this.shape_678},{t:this.shape_677},{t:this.shape_676},{t:this.shape_675}]}).wait(126));

	// 衣服1
	this.shape_757 = new cjs.Shape();
	this.shape_757.graphics.f("#333333").s().p("ApUSKIBBunIAAxZQAEhJA8hAQAsguA6gdQBrg2AbgGQAmgJArAaQFjDbDrQyQBJFRAxFyQAZC5AKB2g");
	this.shape_757.setTransform(271.2,509.7);

	this.timeline.addTween(cjs.Tween.get(this.shape_757).wait(126));

	// 衣服2
	this.shape_758 = new cjs.Shape();
	this.shape_758.graphics.f().s("#333333").ss(1,1,1).p("ACzqnImiCuICDShIFcyvg");
	this.shape_758.setTransform(233,456);

	this.shape_759 = new cjs.Shape();
	this.shape_759.graphics.f("#FFFFFF").s().p("Ajvn5IGiiuIA9CgIlcSvg");
	this.shape_759.setTransform(233,456);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_759},{t:this.shape_758}]}).wait(126));

	// 图层 12
	this.instance_3 = new lib.Symbol6();
	this.instance_3.setTransform(230,396.7,1,1,0,0,0,93.7,129.6);

	this.timeline.addTween(cjs.Tween.get(this.instance_3).to({regY:129.5,rotation:-10.7,y:396.6},6).to({regX:93.8,regY:129.6,rotation:-3.7,y:396.7},5).to({regY:129.5,rotation:-9.4,y:396.6},6).to({regX:93.9,regY:129.6,rotation:-4,x:230.1,y:396.7},5).to({rotation:-12.4,x:230},10).to({regY:129.5,rotation:-6.5,y:396.6},12).to({regX:93.8,regY:129.4,rotation:-10.7,x:229.9},5).to({regX:93.9,rotation:-6,x:230,y:396.7},6).to({regX:93.7,regY:129.6,rotation:0},11).wait(60));

	// 图层 13
	this.instance_4 = new lib.Symbol7();
	this.instance_4.setTransform(75.9,484.6);

	this.timeline.addTween(cjs.Tween.get(this.instance_4).to({rotation:-30,x:73.9,y:448.9},6).to({rotation:0,x:75.9,y:484.6},5).to({rotation:-30,x:73.4,y:448.9},6).to({rotation:0,x:75.9,y:484.6},5).to({scaleX:1,scaleY:1,rotation:-11.8,x:72.4,y:454},8).to({scaleX:1,scaleY:1,rotation:-15,x:71.6,y:446.4},2).to({rotation:30,x:95.9,y:400.4},3).wait(1).to({scaleY:0.93,rotation:0,skewX:-150,skewY:30,x:112.7,y:371.7},0).to({skewX:-105,skewY:75,x:157.2,y:332.9},3).to({skewX:-75,skewY:105,x:177.7,y:356.7},10).to({skewX:-105,skewY:75,x:157.2,y:332.9},7).wait(10).to({skewX:-84.3,skewY:95.7,x:177,y:348.9},5).to({skewX:-105,skewY:75,x:157.2,y:332.9},5).to({skewX:-90,skewY:90,x:176.7,y:349.9},4).to({x:161,y:331.5},3).wait(1).to({scaleY:1,rotation:105.8,skewX:0,skewY:0,x:141.6,y:347.6},0).to({scaleX:1,scaleY:1,rotation:67.1,x:108.9,y:404.8},4).to({scaleX:1,scaleY:1,rotation:0,x:75.9,y:484.6},5).to({scaleX:1,scaleY:1,rotation:7.5,x:85.6,y:462},1).to({scaleX:1,scaleY:1,rotation:35.1,x:95.1,y:433.3},1).to({scaleX:1,scaleY:1,rotation:90,x:123.7,y:381.1},2).wait(1).to({scaleY:0.93,rotation:0,skewX:-105,skewY:75,x:146.5,y:354.7},0).wait(1).to({skewX:-90,skewY:90,x:161,y:331.5},0).wait(18).to({scaleY:1,rotation:105.8,skewX:0,skewY:0,x:141.1,y:349.4},0).to({scaleX:1,scaleY:1,rotation:62.9,x:105.8,y:412.9},4).to({scaleX:1,scaleY:1,rotation:0,x:75.9,y:484.6},4).wait(1));

	// 后手
	this.shape_760 = new cjs.Shape();
	this.shape_760.graphics.f().s("#666666").ss(26,1,1).p("AMLjHQgnAMhcAUQi2AqkAAuQlQA/loBxQi0A6hwAt");
	this.shape_760.setTransform(167,455);

	this.shape_761 = new cjs.Shape();
	this.shape_761.graphics.f().s("#666666").ss(26,1,1).p("AsHCjQBmgtCpg4QFThuFLg1QD3gnDOgPQBogHA1AA");
	this.shape_761.setTransform(165.1,452.1);

	this.shape_762 = new cjs.Shape();
	this.shape_762.graphics.f().s("#666666").ss(26,1,1).p("AsECJQBcgtCeg3QE9hqFHgrQDtggDnALQBzAFBEAM");
	this.shape_762.setTransform(163.2,448.2);

	this.shape_763 = new cjs.Shape();
	this.shape_763.graphics.f().s("#666666").ss(26,1,1).p("AsCB7QBTguCTg0QEnhoFEghQDigZEAAlQCAATBSAY");
	this.shape_763.setTransform(161.4,443.1);

	this.shape_764 = new cjs.Shape();
	this.shape_764.graphics.f().s("#666666").ss(26,1,1).p("Ar+BxQBIguCJgzQERhkE/gYQDZgSEXBAQCNAgBgAh");
	this.shape_764.setTransform(159.5,437.6);

	this.shape_765 = new cjs.Shape();
	this.shape_765.graphics.f().s("#666666").ss(26,1,1).p("Ar8BpQA+gvB/gxQD7hhE9gOQDNgLEwBaQCYArBvAv");
	this.shape_765.setTransform(157.6,432);

	this.shape_766 = new cjs.Shape();
	this.shape_766.graphics.f().s("#666666").ss(26,1,1).p("AL6BzQh9g7ikg4QlIh0jDADQk6AEjlBgQhzAug0Av");
	this.shape_766.setTransform(155.7,428);

	this.shape_767 = new cjs.Shape();
	this.shape_767.graphics.f().s("#666666").ss(26,1,1).p("Ar8BqQBAguCAgyQEAhiE8gQQDRgLErBUQCWApBrAs");
	this.shape_767.setTransform(158,433.1);

	this.shape_768 = new cjs.Shape();
	this.shape_768.graphics.f().s("#666666").ss(26,1,1).p("Ar/B1QBMguCNg0QEZhmFCgbQDdgVENA1QCHAbBbAf");
	this.shape_768.setTransform(160.2,439.9);

	this.shape_769 = new cjs.Shape();
	this.shape_769.graphics.f().s("#666666").ss(26,1,1).p("AsDCDQBYguCag2QE0hpFGgnQDogdDxAVQB5ALBJAR");
	this.shape_769.setTransform(162.5,446.3);

	this.shape_770 = new cjs.Shape();
	this.shape_770.graphics.f().s("#666666").ss(26,1,1).p("AsHCcQBlgtCng4QFOhtFKgzQD1gmDTgKQBqgEA5AC");
	this.shape_770.setTransform(164.7,451.5);

	this.shape_771 = new cjs.Shape();
	this.shape_771.graphics.f().s("#666666").ss(26,1,1).p("AsJCyQBrgtCtg5QFchvFNg5QD6gqDFgaQBjgMAwgF");
	this.shape_771.setTransform(165.9,453.3);

	this.shape_772 = new cjs.Shape();
	this.shape_772.graphics.f().s("#666666").ss(26,1,1).p("AsFCNQBeguChg3QFAhrFJgtQDughDiAGQByADBBAJ");
	this.shape_772.setTransform(163.6,449.2);

	this.shape_773 = new cjs.Shape();
	this.shape_773.graphics.f().s("#666666").ss(26,1,1).p("Ar+BvQBGguCHgzQENhjE+gWQDXgQEcBEQCPAjBjAk");
	this.shape_773.setTransform(159.1,436.5);

	this.shape_774 = new cjs.Shape();
	this.shape_774.graphics.f().s("#666666").ss(26,1,1).p("Ar6BmQA6gvB5gxQDzhfE8gLQDJgHE5BkQCdAxB0Az");
	this.shape_774.setTransform(156.8,429.7);

	this.shape_775 = new cjs.Shape();
	this.shape_775.graphics.f().s("#666666").ss(26,1,1).p("ArNgeQAYgQAogQQAhgMAtgNQAtgLAxgIQCsgVDnAOQBXAHB1AbQCJAfCpA5QA9AVA3AVQBfAkBLAh");
	this.shape_775.setTransform(161.9,426.8);

	this.shape_776 = new cjs.Shape();
	this.shape_776.graphics.f().s("#666666").ss(26,1,1).p("Aqih6QATgHAhgIQAbgCAmgDQAmgBAsACQCXAQDaAgQBWAOBvAcQCIAjClA3QA7AUA4AUQBeAiBKAe");
	this.shape_776.setTransform(168.1,423.8);

	this.shape_777 = new cjs.Shape();
	this.shape_777.graphics.f().s("#666666").ss(26,1,1).p("Ap3i/QAOADAaACQAVAHAfAGQAgAKAlALQCDA1DOAxQBTAWBrAdQCHAmCfA2QA7AUA3ATQBgAhBHAa");
	this.shape_777.setTransform(174.3,418.4);

	this.shape_778 = new cjs.Shape();
	this.shape_778.graphics.f().s("#666666").ss(26,1,1).p("ApMj5QAKAMASAMQAQAQAYAQQAYAUAgAVQBuBaDBBAQBQAfBoAfQCGAqCaAzQA6ATA3ATQBgAgBFAX");
	this.shape_778.setTransform(180.4,411.9);

	this.shape_779 = new cjs.Shape();
	this.shape_779.graphics.f().s("#666666").ss(26,1,1).p("AohkzQAGAVAKAVQAKAaARAaQASAeAZAeQBZB/C2BSQBNAmBmAiQCDAtCVAwQA4ATA3ASQBhAeBDAU");
	this.shape_779.setTransform(186.6,405.4);

	this.shape_780 = new cjs.Shape();
	this.shape_780.graphics.f().s("#666666").ss(26,1,1).p("An2ltQABAeADAeQAEAkALAjQALApASAnQBFCjCpBlQBKAuBiAjQCDAxCPAuQA3ARA4ARQBhAdBBAR");
	this.shape_780.setTransform(192.8,399);

	this.shape_781 = new cjs.Shape();
	this.shape_781.graphics.f().s("#666666").ss(26,1,1).p("AHQGpQg+gOhjgcQjEg5i1hHQksh3hGkjQgWhbAEhiIAIhQ");
	this.shape_781.setTransform(198.5,392.5);
	this.shape_781._off = true;

	this.shape_782 = new cjs.Shape();
	this.shape_782.graphics.f().s("#666666").ss(26,1,1).p("Am+mhIgKBOQgHBfAUBaQA/EcEsB2QC1BIDFA5QBiAcA+AN");
	this.shape_782.setTransform(199.1,393.6);

	this.shape_783 = new cjs.Shape();
	this.shape_783.graphics.f().s("#666666").ss(26,1,1).p("Am1mbIgMBMQgJBdARBXQA4EWEsB2QC1BIDFA5QBiAcA+AN");
	this.shape_783.setTransform(199.6,394.6);

	this.shape_784 = new cjs.Shape();
	this.shape_784.graphics.f().s("#666666").ss(26,1,1).p("AmsmUIgOBKQgMBaAPBWQAxEPEsB2QC1BIDFA5QBiAcA+AN");
	this.shape_784.setTransform(200.1,395.7);

	this.shape_785 = new cjs.Shape();
	this.shape_785.graphics.f().s("#666666").ss(26,1,1).p("AmimOIgRBIQgOBYANBTQAqEJEsB2QC1BIDEA5QBjAcA+AN");
	this.shape_785.setTransform(200.5,396.7);

	this.shape_786 = new cjs.Shape();
	this.shape_786.graphics.f().s("#666666").ss(26,1,1).p("AmZmHIgTBFQgRBWALBRQAjECEsB3QC1BIDFA5QBiAbA+AO");
	this.shape_786.setTransform(201,397.8);

	this.shape_787 = new cjs.Shape();
	this.shape_787.graphics.f().s("#666666").ss(26,1,1).p("AmPmAIgVBDQgUBTAJBQQAcD7EsB3QC1BIDEA4QBjAcA+AO");
	this.shape_787.setTransform(201.4,398.8);

	this.shape_788 = new cjs.Shape();
	this.shape_788.graphics.f().s("#666666").ss(26,1,1).p("AmFl6IgYBBQgWBRAHBNQAVD1EsB3QC1BIDEA4QBjAcA+AO");
	this.shape_788.setTransform(201.8,399.9);

	this.shape_789 = new cjs.Shape();
	this.shape_789.graphics.f().s("#666666").ss(26,1,1).p("Al7lzIgaA+QgZBPAFBMQAODuEsB3QC1BIDEA4QBjAcA+AO");
	this.shape_789.setTransform(202.2,400.9);

	this.shape_790 = new cjs.Shape();
	this.shape_790.graphics.f().s("#666666").ss(26,1,1).p("AlxltIgcA9QgbBMACBJQAHDoEsB3QC1BIDFA4QBiAcA+AO");
	this.shape_790.setTransform(202.6,402);

	this.shape_791 = new cjs.Shape();
	this.shape_791.graphics.f().s("#666666").ss(26,1,1).p("AGkFoQg+gOhjgcQjEg5i2hHQksh3AAjiQAAhHAehKIAeg7");
	this.shape_791.setTransform(203,403);

	this.shape_792 = new cjs.Shape();
	this.shape_792.graphics.f().s("#666666").ss(26,1,1).p("Al1lwIgbA+QgaBNADBKQAKDsEsB2QC1BIDEA5QBjAcA+AN");
	this.shape_792.setTransform(202.4,401.5);

	this.shape_793 = new cjs.Shape();
	this.shape_793.graphics.f().s("#666666").ss(26,1,1).p("AmEl5IgXBBQgXBQAGBNQAUD1EsB2QC1BIDFA4QBiAdA+AN");
	this.shape_793.setTransform(201.9,400);

	this.shape_794 = new cjs.Shape();
	this.shape_794.graphics.f().s("#666666").ss(26,1,1).p("AmSmDIgUBEQgTBUAJBQQAeD+EsB3QC1BIDFA4QBiAcA+AO");
	this.shape_794.setTransform(201.3,398.5);

	this.shape_795 = new cjs.Shape();
	this.shape_795.graphics.f().s("#666666").ss(26,1,1).p("AmgmLIgRBGQgPBYAMBSQAoEHEsB2QC1BIDFA5QBiAcA+AN");
	this.shape_795.setTransform(200.7,397);

	this.shape_796 = new cjs.Shape();
	this.shape_796.graphics.f().s("#666666").ss(26,1,1).p("AmtmVIgOBJQgLBcAPBVQAyEREsB2QC1BIDFA5QBiAcA+AN");
	this.shape_796.setTransform(200,395.5);

	this.shape_797 = new cjs.Shape();
	this.shape_797.graphics.f().s("#666666").ss(26,1,1).p("Am6meIgLBNQgIBeATBYQA8EZEsB3QC1BIDFA4QBiAcA+AO");
	this.shape_797.setTransform(199.3,394);

	this.shape_798 = new cjs.Shape();
	this.shape_798.graphics.f().s("#666666").ss(26,1,1).p("AnGmoIgIBQQgEBiAWBbQBGEjEsB3QC1BHDEA5QBjAcA+AO");
	this.shape_798.setTransform(198.5,392.5);
	this.shape_798._off = true;

	this.shape_799 = new cjs.Shape();
	this.shape_799.graphics.f().s("#666666").ss(26,1,1).p("Am1maIgMBLQgJBdARBXQA4EWEsB2QC1BIDFA5QBiAcA+AN");
	this.shape_799.setTransform(199.6,393.8);

	this.shape_800 = new cjs.Shape();
	this.shape_800.graphics.f().s("#666666").ss(26,1,1).p("Al7l0IgaA/QgZBPAFBMQAODuEsB3QC1BIDEA4QBjAcA+AO");
	this.shape_800.setTransform(202.2,397.7);

	this.shape_801 = new cjs.Shape();
	this.shape_801.graphics.f().s("#666666").ss(26,1,1).p("AmwmXIgOBKQgKBcAQBXQA1ESEsB2QC1BIDEA5QBjAcA+AN");
	this.shape_801.setTransform(199.8,395.1);

	this.shape_802 = new cjs.Shape();
	this.shape_802.graphics.f().s("#666666").ss(26,1,1).p("AmAl3IgZBAQgXBQAFBNQASDxEsB3QC1BIDEA4QBjAcA+AO");
	this.shape_802.setTransform(202,400.4);

	this.shape_803 = new cjs.Shape();
	this.shape_803.graphics.f().s("#666666").ss(26,1,1).p("AmIl8IgXBBQgVBTAHBNQAXD4EsB2QC1BIDFA5QBiAcA+AN");
	this.shape_803.setTransform(201.7,399.5);

	this.shape_804 = new cjs.Shape();
	this.shape_804.graphics.f().s("#666666").ss(26,1,1).p("AmpmSIgPBJQgNBZAPBVQAvEOEsB2QC1BIDEA4QBjAdA+AN");
	this.shape_804.setTransform(200.2,396);

	this.shape_805 = new cjs.Shape();
	this.shape_805.graphics.f().s("#666666").ss(26,1,1).p("AnqlpQAAAiABAjQAFBSAfBOQBhD9EtBlQAZAIAYAIQClAyCqApQAYAGAVAEQBHAOAuAJ");
	this.shape_805.setTransform(195.8,398.8);

	this.shape_806 = new cjs.Shape();
	this.shape_806.graphics.f().s("#666666").ss(26,1,1).p("AoLkrQAFAdAGAcQAPBHAoBBQB7DVEuBTQAZAGAXAHQCtAoCpAgQAYAEAXAEQBIAKAuAH");
	this.shape_806.setTransform(192.6,405);

	this.shape_807 = new cjs.Shape();
	this.shape_807.graphics.f().s("#666666").ss(26,1,1).p("AorjsQAKAXALAXQAYA6AyA0QCVCtEuBBQAYAFAZAEQCzAfCpAXQAZADAWACQBLAHAuAE");
	this.shape_807.setTransform(189.4,411.3);

	this.shape_808 = new cjs.Shape();
	this.shape_808.graphics.f().s("#666666").ss(26,1,1).p("ApKiuQANASARARQAhAtA7AnQCwCFEtAvQAaADAaADQC5AVCoAPQAZABAXACQBNADAtAC");
	this.shape_808.setTransform(186.2,417.5);

	this.shape_809 = new cjs.Shape();
	this.shape_809.graphics.f().s("#666666").ss(26,1,1).p("ApqhwQARAMAWAMQArAgBEAaQDKBdEuAdQAaACAbACQC/AKCoAHQAZAAAXAAQBQgBArgB");
	this.shape_809.setTransform(183,423.8);

	this.shape_810 = new cjs.Shape();
	this.shape_810.graphics.f().s("#666666").ss(26,1,1).p("AqKg2QAWAGAbAGQAzATBPAOQDjA0EvALQAbABAbAAQDFABCngCQAagBAXgCQBTgFAqgC");
	this.shape_810.setTransform(179.8,430.6);

	this.shape_811 = new cjs.Shape();
	this.shape_811.graphics.f().s("#666666").ss(26,1,1).p("AqqADQAaABAgAAQA9AGBYABQD9APExgHQAbgBAbgBQDLgKCngIQAagDAYgCQBUgJAqgF");
	this.shape_811.setTransform(176.6,437.1);

	this.shape_812 = new cjs.Shape();
	this.shape_812.graphics.f().s("#666666").ss(26,1,1).p("ArKBLQAegFAmgGQBGgGBhgMQEYgaExgWQAcgDAbgDQDRgTCngUQAagDAYgEQBXgNApgH");
	this.shape_812.setTransform(173.4,442.5);

	this.shape_813 = new cjs.Shape();
	this.shape_813.graphics.f().s("#666666").ss(26,1,1).p("ArqCJQAjgLArgLQBPgTBrgZQExhBEygpQAcgEAdgEQDXgeCmgbQAagFAZgFQBZgRAogJ");
	this.shape_813.setTransform(170.2,448.8);

	this.shape_814 = new cjs.Shape();
	this.shape_814.graphics.f().s("#666666").ss(26,1,1).p("ArVBfQAggGAngIQBKgLBkgQQEggnEygcQAbgDAdgEQDSgXCngWQAagDAYgEQBYgOApgI");
	this.shape_814.setTransform(172.3,444.6);

	this.shape_815 = new cjs.Shape();
	this.shape_815.graphics.f().s("#666666").ss(26,1,1).p("AqggWQAZACAfACQA6ALBUAFQD1AaEwgBQAbgBAbAAQDJgHCngHQAagCAYgCQBUgGAqgE");
	this.shape_815.setTransform(177.6,435.7);

	this.shape_816 = new cjs.Shape();
	this.shape_816.graphics.f().s("#666666").ss(26,1,1).p("Ao1jXQAKAVANAVQAbA1A1AwQCeCgEvA7QAXAEAaAEQC1AcCpAUQAYADAXACQBMAFAtAD");
	this.shape_816.setTransform(188.3,413.3);

	this.shape_817 = new cjs.Shape();
	this.shape_817.graphics.f().s("#666666").ss(26,1,1).p("AoAk/QADAeAFAeQALBLAlBFQBzDjEtBYQAZAHAXAHQCrAsCpAjQAYAEAWAEQBJAMAuAH");
	this.shape_817.setTransform(193.6,402.9);

	this.shape_818 = new cjs.Shape();
	this.shape_818.graphics.f().s("#666666").ss(26,1,1).p("AnuliQABAiACAhQAGBSAgBMQBkD5EtBjQAYAHAZAIQClAyCqAnQAYAFAWAFQBHAOAuAI");
	this.shape_818.setTransform(195.4,399.5);

	this.shape_819 = new cjs.Shape();
	this.shape_819.graphics.f().s("#666666").ss(26,1,1).p("AoSkcQAGAbAIAbQAQBEAqA+QCBDMEvBPQAZAGAXAGQCtAmCqAeQAYAEAWADQBKAKAuAG");
	this.shape_819.setTransform(191.9,406.4);

	this.shape_820 = new cjs.Shape();
	this.shape_820.graphics.f().s("#666666").ss(26,1,1).p("ApZiSQAPAPATAPQAmAnBAAiQC6BzEuAnQAaACAaADQC8AQCoALQAZABAXABQBPABArAB");
	this.shape_820.setTransform(184.8,420.3);

	this.shape_821 = new cjs.Shape();
	this.shape_821.graphics.f().s("#666666").ss(26,1,1).p("Ap8hPQAUAJAZAIQAvAZBKATQDYBGEvATQAbACAaABQDDAECnACQAZAAAYgBQBRgDArgC");
	this.shape_821.setTransform(181.2,427.5);

	this.shape_822 = new cjs.Shape();
	this.shape_822.graphics.f().s("#666666").ss(26,1,1).p("ArDA8QAegDAkgFQBEgDBfgJQESgRExgVQAbgCAcAAQDQgSCmgRQAagDAZgDQBWgMApgH");
	this.shape_822.setTransform(174.1,441.1);

	this.shape_823 = new cjs.Shape();
	this.shape_823.graphics.f().s("#666666").ss(26,1,1).p("ArnCCQAjgKAqgKQBOgSBqgYQEvg9EygnQAcgDAcgEQDWgdCmgbQAagEAZgFQBZgQApgJ");
	this.shape_823.setTransform(170.5,448.1);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_760}]}).to({state:[{t:this.shape_761}]},1).to({state:[{t:this.shape_762}]},1).to({state:[{t:this.shape_763}]},1).to({state:[{t:this.shape_764}]},1).to({state:[{t:this.shape_765}]},1).to({state:[{t:this.shape_766}]},1).to({state:[{t:this.shape_767}]},1).to({state:[{t:this.shape_768}]},1).to({state:[{t:this.shape_769}]},1).to({state:[{t:this.shape_770}]},1).to({state:[{t:this.shape_760}]},1).to({state:[{t:this.shape_761}]},1).to({state:[{t:this.shape_762}]},1).to({state:[{t:this.shape_763}]},1).to({state:[{t:this.shape_764}]},1).to({state:[{t:this.shape_765}]},1).to({state:[{t:this.shape_766}]},1).to({state:[{t:this.shape_767}]},1).to({state:[{t:this.shape_768}]},1).to({state:[{t:this.shape_769}]},1).to({state:[{t:this.shape_770}]},1).to({state:[{t:this.shape_760}]},1).to({state:[{t:this.shape_771}]},1).to({state:[{t:this.shape_770}]},1).to({state:[{t:this.shape_772}]},1).to({state:[{t:this.shape_769}]},1).to({state:[{t:this.shape_763}]},1).to({state:[{t:this.shape_768}]},1).to({state:[{t:this.shape_773}]},1).to({state:[{t:this.shape_767}]},1).to({state:[{t:this.shape_774}]},1).to({state:[{t:this.shape_766}]},1).to({state:[{t:this.shape_775}]},1).to({state:[{t:this.shape_776}]},1).to({state:[{t:this.shape_777}]},1).to({state:[{t:this.shape_778}]},1).to({state:[{t:this.shape_779}]},1).to({state:[{t:this.shape_780}]},1).to({state:[{t:this.shape_781}]},1).to({state:[{t:this.shape_782}]},1).to({state:[{t:this.shape_783}]},1).to({state:[{t:this.shape_784}]},1).to({state:[{t:this.shape_785,p:{y:396.7}}]},1).to({state:[{t:this.shape_786}]},1).to({state:[{t:this.shape_787,p:{y:398.8}}]},1).to({state:[{t:this.shape_788}]},1).to({state:[{t:this.shape_789}]},1).to({state:[{t:this.shape_790}]},1).to({state:[{t:this.shape_791,p:{y:403}}]},1).to({state:[{t:this.shape_792}]},1).to({state:[{t:this.shape_793}]},1).to({state:[{t:this.shape_794}]},1).to({state:[{t:this.shape_795}]},1).to({state:[{t:this.shape_796}]},1).to({state:[{t:this.shape_797}]},1).to({state:[{t:this.shape_781}]},1).to({state:[{t:this.shape_798}]},1).to({state:[{t:this.shape_798}]},1).to({state:[{t:this.shape_798}]},1).to({state:[{t:this.shape_798}]},1).to({state:[{t:this.shape_798}]},1).to({state:[{t:this.shape_798}]},1).to({state:[{t:this.shape_798}]},1).to({state:[{t:this.shape_798}]},1).to({state:[{t:this.shape_798}]},1).to({state:[{t:this.shape_781}]},1).to({state:[{t:this.shape_799}]},1).to({state:[{t:this.shape_785,p:{y:395.1}}]},1).to({state:[{t:this.shape_787,p:{y:396.4}}]},1).to({state:[{t:this.shape_800}]},1).to({state:[{t:this.shape_791,p:{y:399}}]},1).to({state:[{t:this.shape_800}]},1).to({state:[{t:this.shape_787,p:{y:396.4}}]},1).to({state:[{t:this.shape_785,p:{y:395.1}}]},1).to({state:[{t:this.shape_799}]},1).to({state:[{t:this.shape_781}]},1).to({state:[{t:this.shape_801}]},1).to({state:[{t:this.shape_786}]},1).to({state:[{t:this.shape_802}]},1).to({state:[{t:this.shape_791,p:{y:403}}]},1).to({state:[{t:this.shape_803}]},1).to({state:[{t:this.shape_804}]},1).to({state:[{t:this.shape_781}]},1).to({state:[{t:this.shape_805}]},1).to({state:[{t:this.shape_806}]},1).to({state:[{t:this.shape_807}]},1).to({state:[{t:this.shape_808}]},1).to({state:[{t:this.shape_809}]},1).to({state:[{t:this.shape_810}]},1).to({state:[{t:this.shape_811}]},1).to({state:[{t:this.shape_812}]},1).to({state:[{t:this.shape_813}]},1).to({state:[{t:this.shape_760}]},1).to({state:[{t:this.shape_814}]},1).to({state:[{t:this.shape_815}]},1).to({state:[{t:this.shape_809}]},1).to({state:[{t:this.shape_816}]},1).to({state:[{t:this.shape_817}]},1).to({state:[{t:this.shape_781}]},1).to({state:[{t:this.shape_781}]},17).to({state:[{t:this.shape_818}]},1).to({state:[{t:this.shape_819}]},1).to({state:[{t:this.shape_816}]},1).to({state:[{t:this.shape_820}]},1).to({state:[{t:this.shape_821}]},1).to({state:[{t:this.shape_815}]},1).to({state:[{t:this.shape_822}]},1).to({state:[{t:this.shape_823}]},1).to({state:[{t:this.shape_760}]},1).wait(1));
	this.timeline.addTween(cjs.Tween.get(this.shape_760).to({_off:true},1).wait(10).to({_off:false},0).to({_off:true},1).wait(10).to({_off:false},0).to({_off:true},1).wait(70).to({_off:false},0).to({_off:true},1).wait(31).to({_off:false},0).wait(1));
	this.timeline.addTween(cjs.Tween.get(this.shape_781).wait(39).to({_off:false},0).to({_off:true},1).wait(16).to({_off:false},0).to({_off:true},1).wait(9).to({_off:false},0).to({_off:true},1).wait(9).to({_off:false},0).to({_off:true},1).wait(6).to({_off:false},0).to({_off:true},1).wait(15).to({_off:false},0).wait(17).to({_off:true},1).wait(9));
	this.timeline.addTween(cjs.Tween.get(this.shape_798).wait(57).to({_off:false},0).wait(8).to({_off:true},1).wait(60));

	// 纸
	this.shape_824 = new cjs.Shape();
	this.shape_824.graphics.f().s("#333333").ss(1,1,1).p("Anug5ILtAAIDwBzIrtAAg");
	this.shape_824.setTransform(87.5,480);

	this.shape_825 = new cjs.Shape();
	this.shape_825.graphics.f("#FFFFFF").s().p("Aj9A6IjxhzILtAAIDvBzg");
	this.shape_825.setTransform(87.5,480);

	this.shape_826 = new cjs.Shape();
	this.shape_826.graphics.f().s("#333333").ss(1,1,1).p("AnogqIGFgjIFZAAIDZBfIAZAPIgZABQhCAFhCAEQirAPieAMQhvAMiFgGQhZgrhQglg");
	this.shape_826.setTransform(93.6,471.4);

	this.shape_827 = new cjs.Shape();
	this.shape_827.graphics.f("#FFFFFF").s().p("AjzBMIiohQIhNgmIGFgjIFZAAIDZBfIAaAPIgaABIiEAJQirAPieAMQhIAIhTAAQgsAAgugCg");
	this.shape_827.setTransform(93.6,471.4);

	this.shape_828 = new cjs.Shape();
	this.shape_828.graphics.f().s("#333333").ss(1,1,1).p("AnigbIFvhFIFggBIDgBbIAWAOIgZADQhDAIhAAKQiqAdiRAZQhkAXiPgNQhagqhTgpg");
	this.shape_828.setTransform(99.6,462.8);

	this.shape_829 = new cjs.Shape();
	this.shape_829.graphics.f("#FFFFFF").s().p("AjnBdQhagqhTgpIhOglIFvhFIFggBIDgBbIAWAOIgZADIiDASIk7A2Qg/APhTAAQguAAgzgFg");
	this.shape_829.setTransform(99.6,462.8);

	this.shape_830 = new cjs.Shape();
	this.shape_830.graphics.f().s("#333333").ss(1,1,1).p("AncgMIFZhnIFngBIDnBTIASARIgZAFQhCALhAAOQipAsiCAkQhZAkiagTQhbgrhVgqg");
	this.shape_830.setTransform(105.6,454.3);

	this.shape_831 = new cjs.Shape();
	this.shape_831.graphics.f("#FFFFFF").s().p("AjbBvQhcgrhVgqIhQgmIFahnIFngBIDmBTIARARIgYAFIiCAZQipAsiCAkQg5AXhWAAQguAAg1gGg");
	this.shape_831.setTransform(105.6,454.3);

	this.shape_832 = new cjs.Shape();
	this.shape_832.graphics.f().s("#333333").ss(1,1,1).p("AnWABIFEiHIFugCIDtBNIAOASIgZAGQhCARg+ASQioA6h0AxQhPAvijgaQhdgqhYgrg");
	this.shape_832.setTransform(111.6,445.7);

	this.shape_833 = new cjs.Shape();
	this.shape_833.graphics.f("#FFFFFF").s().p("AjQCAQhdgqhYgrIhRgqIFEiHIFugCIDtBNIAOASIgZAGQhCARg+ASQioA6h0AxQgyAehYAAQgvAAg5gJg");
	this.shape_833.setTransform(111.6,445.7);

	this.shape_834 = new cjs.Shape();
	this.shape_834.graphics.f().s("#333333").ss(1,1,1).p("AnQAQIEtiqIF2gCIDzBGIALATIgZAIQhBAWg+AXQimBIhnA9QhEA7itggQhegqhagug");
	this.shape_834.setTransform(117.7,437.1);

	this.shape_835 = new cjs.Shape();
	this.shape_835.graphics.f("#FFFFFF").s().p("AjFCSQhegqhaguIhTgqIEtiqIF2gCIDzBGIALATIgZAIQhBAWg+AXQimBIhnA9QgsAmhYAAQgwAAg9gLg");
	this.shape_835.setTransform(117.7,437.1);

	this.shape_836 = new cjs.Shape();
	this.shape_836.graphics.f().s("#333333").ss(1,1,1).p("AnKAfIEXjMIF9gDID6BAIAHAUIgZAJQhBAag8AcQimBXhZBJQg5BGi3gmQhggqhcgvg");
	this.shape_836.setTransform(123.7,428.6);

	this.shape_837 = new cjs.Shape();
	this.shape_837.graphics.f("#FFFFFF").s().p("Ai5CjQhggqhdgvIhUgrIEXjMIF9gDID6BAIAHAUIgYAJQhCAag8AcQimBXhYBJQgnAuhYAAQgxAAhAgOg");
	this.shape_837.setTransform(123.7,428.6);

	this.shape_838 = new cjs.Shape();
	this.shape_838.graphics.f().s("#333333").ss(1,1,1).p("AnEAuIECjuIGDgDIEBA4IADAWIgYAKQhBAfg7AgQilBmhLBVQgwBSi/gsQhhgqhfgwg");
	this.shape_838.setTransform(129.7,420);

	this.shape_839 = new cjs.Shape();
	this.shape_839.graphics.f("#FFFFFF").s().p("AiuC1QhhgqhfgwIhWgtIECjuIGDgDIEBA4IADAWIgYAKQhBAfg7AgQilBmhLBVQgfA1hbAAQgyAAhDgPg");
	this.shape_839.setTransform(129.7,420);

	this.shape_840 = new cjs.Shape();
	this.shape_840.graphics.f().s("#333333").ss(1,1,1).p("Am+A9IDrkRIGLgDIEHAyIgBAWIgYAMQhBAjg5AlQikB1g9BhQglBejKgzQhigphhgyg");
	this.shape_840.setTransform(135.8,411.4);

	this.shape_841 = new cjs.Shape();
	this.shape_841.graphics.f("#FFFFFF").s().p("AikDGQhigphhgyIhXguIDrkRIGLgDIEHAyIgBAWIgYAMQhBAjg5AlQikB1g9BhQgYA9hcAAQgzAAhIgSg");
	this.shape_841.setTransform(135.8,411.4);

	this.shape_842 = new cjs.Shape();
	this.shape_842.graphics.f().s("#333333").ss(1,1,1).p("Am6BMIDVk0IGTgDIENArIgEAYIgYANQhBAng5AqQiiCEgvBtQgbBqjTg6Qhkgphkgzg");
	this.shape_842.setTransform(142,402.9);

	this.shape_843 = new cjs.Shape();
	this.shape_843.graphics.f("#FFFFFF").s().p("AiaDXQhkgphkgzIhYgvIDVk0IGTgDIENArIgEAYIgYANQhBAng5AqQiiCEgvBtQgRBFheAAQg0AAhLgVg");
	this.shape_843.setTransform(142,402.9);

	this.shape_844 = new cjs.Shape();
	this.shape_844.graphics.f().s("#333333").ss(1,1,1).p("Am2BbIDAlWIGZgDIEUAkIgIAZIgYAPQhAArg4AvQiiCSggB5QgRB2jchAQhmgphmg1g");
	this.shape_844.setTransform(148.3,394.3);

	this.shape_845 = new cjs.Shape();
	this.shape_845.graphics.f("#FFFFFF").s().p("AiRDpQhlgphmg1IhagwIDAlWIGZgDIEUAkIgIAZIgYAPQhBArg3AvQihCSghB5QgLBMhgAAQg0AAhPgWg");
	this.shape_845.setTransform(148.3,394.3);

	this.shape_846 = new cjs.Shape();
	this.shape_846.graphics.f().s("#333333").ss(1,1,1).p("AmyBqICql4IGhgEIEaAdIgMAaIgXARQhAAvg3A0QigChgTCFQgGCBjnhGQhmgphpg2g");
	this.shape_846.setTransform(154.5,385.7);

	this.shape_847 = new cjs.Shape();
	this.shape_847.graphics.f("#FFFFFF").s().p("AiHD6Qhmgphpg2IhcgxICql4IGggEIEbAdIgMAaIgXARQhAAvg3A0QigChgUCFQgDBUhiAAQg1AAhSgZg");
	this.shape_847.setTransform(154.5,385.7);

	this.shape_848 = new cjs.Shape();
	this.shape_848.graphics.f().s("#333333").ss(1,1,1).p("AmuB5ICUmaIGogFIEhAXIgQAbIgXASQhAA0g1A4QigCwgFCRQAFCOjxhNQhngphsg3g");
	this.shape_848.setTransform(160.7,377.1);

	this.shape_849 = new cjs.Shape();
	this.shape_849.graphics.f("#FFFFFF").s().p("Ah+EMQhngphsg3IhdgzICUmaIGogFIEhAXIgQAbIgXASQhAA0g1A4QigCwgFCRQADBchlAAQg0AAhWgbg");
	this.shape_849.setTransform(160.7,377.1);

	this.shape_850 = new cjs.Shape();
	this.shape_850.graphics.f().s("#333333").ss(1,1,1).p("AmqCIIB+m9IGvgFIEoARIgTAbIgYAUQg/A4g0A9QifC/AJCdQAQCZj7hTQhpgohug6g");
	this.shape_850.setTransform(166.9,368.6);

	this.shape_851 = new cjs.Shape();
	this.shape_851.graphics.f("#FFFFFF").s().p("Ah0EdQhpgohug6IhfgzIB+m9IGvgFIEoARIgTAbIgYAUQg/A4g0A9QifC/AJCdQAKBkhnAAQg1AAhZgeg");
	this.shape_851.setTransform(166.9,368.6);

	this.shape_852 = new cjs.Shape();
	this.shape_852.graphics.f().s("#333333").ss(1,1,1).p("AmmCXIBonfIG3gFIEuAJIgXAdIgYAVQg/A9gzBBQidDOAWCpQAbClkFhZQhqgphxg7g");
	this.shape_852.setTransform(173.1,360);

	this.shape_853 = new cjs.Shape();
	this.shape_853.graphics.f("#FFFFFF").s().p("AhrEvQhqgphxg7Ihgg0IBonfIG3gFIEuAJIgXAdIgYAVQg/A9gzBBQidDOAWCpQASBrhpAAQg2AAhdgfg");
	this.shape_853.setTransform(173.1,360);

	this.shape_854 = new cjs.Shape();
	this.shape_854.graphics.f().s("#333333").ss(1,1,1).p("AmiCmIBSoBIG+gGIE1ADIgyA0Qg/BBgyBGQicDdAkC1QAmCxkPhgQhsgohzg8g");
	this.shape_854.setTransform(179.3,351.4);

	this.shape_855 = new cjs.Shape();
	this.shape_855.graphics.f("#FFFFFF").s().p("AhhFAQhsgohzg8Ihig2IBSoBIG+gGIE1ADIgyA0Qg/BBgyBGQicDdAkC1QAYBzhqAAQg3AAhggig");
	this.shape_855.setTransform(179.3,351.4);

	this.shape_856 = new cjs.Shape();
	this.shape_856.graphics.f().s("#333333").ss(1,1,1).p("AliltIMBgKIg2A3Qg/BGgwBKQibDsAyDBQAyDCkrhxQhdgjh2g9Ihjg3g");
	this.shape_856.setTransform(185.6,342.7);

	this.shape_857 = new cjs.Shape();
	this.shape_857.graphics.f("#FFFFFF").s().p("AhnFOQhegjh1g9Ihjg3IA7okIMBgKIg2A3Qg/BGgxBKQiaDsAyDBQAfB7hsAAQg/AAhsgqg");
	this.shape_857.setTransform(185.6,342.7);

	this.shape_858 = new cjs.Shape();
	this.shape_858.graphics.f().s("#333333").ss(1,1,1).p("AmhChQAgjtAwjpQADgWAFgWQCvgBCsgBIBaAAQB1ABB2ADQAlgBAmgBQgcAagaAaQhABAgyBGQiRDIARCrQACARAEARQAVBkhLAPQgcAGgpgFQgzgKhKgcQgngPgqgUQg9gchAgkQgwgcgrgcg");
	this.shape_858.setTransform(193.3,333.9);

	this.shape_859 = new cjs.Shape();
	this.shape_859.graphics.f("#FFFFFF").s().p("AAGFiQg0gKhKgcQgngPgqgUQg8gchBgkQgvgcgrgcQAfjtAwjpIAHgsIFcgCIBZAAQB2ABB2ADIBLgCIg2A0QhABAgyBGQiRDIARCrIAFAiQAWBkhMAPQgPADgSAAQgQAAgSgCg");
	this.shape_859.setTransform(193.3,333.9);

	this.shape_860 = new cjs.Shape();
	this.shape_860.graphics.f().s("#333333").ss(1,1,1).p("AmjCNQAijgBGjXQAFgUAEgUQCugBCpABIBZACQBzAEBzAGQAhgBAggBQgbAYgcAXQhAA8g0BBQiTC6AFCiQAAARACAQQAQBehKARQgbAGglgDQg1gLhIgdQgmgPgpgUQg8geg9gjQgugegkgcg");
	this.shape_860.setTransform(201,324.9);

	this.shape_861 = new cjs.Shape();
	this.shape_861.graphics.f("#FFFFFF").s().p("AgMFTQg1gLhIgdQgmgPgpgUQg8geg9gjQgugeglgcQAjjgBGjXIAJgoIFXAAIBZACQBzAEBzAGIBBgCIg3AvQhBA8gzBBQiTC6AFCiQAAARACAQQAQBehKARQgSAEgWAAIgYgBg");
	this.shape_861.setTransform(201,324.9);

	this.shape_862 = new cjs.Shape();
	this.shape_862.graphics.f().s("#333333").ss(1,1,1).p("AmnB5QAnjTBajEQAGgTAGgSQCrAACnACIBYAEQBxAGBxAKQAagBAcgBQgcAVgbAWQhCA3g1A8QiWCsgICaQAAAPABAPQAJBahIARQgaAIgkgCQg0gMhGgdQglgQgpgUQg7gfg6gkQgsgfgegcg");
	this.shape_862.setTransform(208.7,315.9);

	this.shape_863 = new cjs.Shape();
	this.shape_863.graphics.f("#FFFFFF").s().p("AggFEQg1gMhFgdQglgQgpgUQg7gfg6gkQgsgfgegcQAmjTBbjEIAMglQCrAACoACIBWAEQByAGBwAKIA2gCIg3ArQhBA3g1A8QiWCsgHCaQgBAPABAPQAJBahHARQgVAGgbAAIgPAAg");
	this.shape_863.setTransform(208.7,315.9);

	this.shape_864 = new cjs.Shape();
	this.shape_864.graphics.f().s("#333333").ss(1,1,1).p("AmqBlQAqjFBvizQAHgRAHgQQCqABClADIBVAGQBvAIBuAPQAXgCAWgBQgcAUgcATQhDAyg2A4QiZCegTCRQgCAPAAAOQADBUhGASQgZAIgkAAQg0gNhDgdQglgQgngUQg7ghg2gjQgqghgYgdg");
	this.shape_864.setTransform(216.4,306.9);

	this.shape_865 = new cjs.Shape();
	this.shape_865.graphics.f("#FFFFFF").s().p("AgzE1Qg1gNhDgdQgkgQgogUQg7ghg2gjQgqghgYgdQAqjFBvizIAOghQCrABCkADIBWAGQBuAIBuAPIAtgDIg4AnQhDAyg2A4QiYCegUCRIgCAdQADBUhGASQgXAIghAAIgEAAg");
	this.shape_865.setTransform(216.4,306.9);

	this.shape_866 = new cjs.Shape();
	this.shape_866.graphics.f().s("#333333").ss(1,1,1).p("AmtBSQAui5CEigQAIgPAIgPQCoACCiAFIBVAHQBsALBsASQARgBARgCQgdASgcASQhDAtg4AyQibCQggCJQgDAOgBANQgDBPhCATQgbAJgjABQgzgOhBgcQgkgRgmgVQg7ghgzgkQgogigRgdg");
	this.shape_866.setTransform(224.1,297.8);

	this.shape_867 = new cjs.Shape();
	this.shape_867.graphics.f("#FFFFFF").s().p("Ai8D8QgjgRgngVQg7ghgzgkQgogigRgdQAui5CEigIAQgeQCoACCiAFIBUAHQBuALBrASIAigDIg5AkQhDAtg4AyQicCQgfCJIgEAbQgDBPhCATQgaAJgkABQgzgOhBgcg");
	this.shape_867.setTransform(224.1,297.8);

	this.shape_868 = new cjs.Shape();
	this.shape_868.graphics.f().s("#333333").ss(1,1,1).p("AmwA+QAxirCaiOQAJgOAJgNQCnADCfAGIBTAJQBrAOBoAWQAMgCAMgCQgcAQgdAQQhEAog5AuQigCCgrCAQgDANgEANQgIBJhBAUQgaAKgiACQgygPg+gcQgkgRglgVQg6gjgwgkQgmgjgLgeg");
	this.shape_868.setTransform(231.8,288.8);

	this.shape_869 = new cjs.Shape();
	this.shape_869.graphics.f("#FFFFFF").s().p("AjNDsQgjgRglgVQg7gjgvgkQgmgjgLgeQAyirCYiOIATgbQCmADCgAGIBTAJQBqAOBpAWIAYgEIg5AgQhEAog5AuQigCCgrCAIgGAaQgJBJhBAUQgaAKghACQgzgPg/gcg");
	this.shape_869.setTransform(231.8,288.8);

	this.shape_870 = new cjs.Shape();
	this.shape_870.graphics.f().s("#333333").ss(1,1,1).p("AmzArQA1ifCuh7QAKgNALgMQCkAFCdAHIBRALQBpAQBmAaQAHgCAHgBQgdANgcAOQhGAjg7ApQihB0g4B4QgFAMgEAMQgPBDg+AWQgaALggAEQgzgRg8gcQgigRgkgWQg7gkgrgkQglglgEgdg");
	this.shape_870.setTransform(239.5,279.8);

	this.shape_871 = new cjs.Shape();
	this.shape_871.graphics.f("#FFFFFF").s().p("AjdDcQgjgSgkgUQg7glgrgkQglglgEgeQA1ieCuh7IAVgYQCkAECdAHIBSALQBoAQBnAaIANgDIg5AbQhFAjg8ApQihB0g4B4IgJAYQgOBDg/AWQgaAKggAFQgzgRg7gcg");
	this.shape_871.setTransform(239.5,279.8);

	this.shape_872 = new cjs.Shape();
	this.shape_872.graphics.f().s("#333333").ss(1,1,1).p("AGvivQgVAJgWAJQgDABgEACQhFAeg9AkQilBnhDBvQgGALgFALQgTA+g/AXQgZALggAFQgxgRg6gcQgigSgjgVQg6gmgogkQgigmABgeQA5iRDDhqQAMgKALgKQCjAECZAKIBQAMQAHACAIABQBdARBaAbgAGvivQABABABAAIADABQABgDACgCIgEACQgCABgCAAIAAAAAGziwQgCABgCAA");
	this.shape_872.setTransform(247.1,270.7);

	this.shape_873 = new cjs.Shape();
	this.shape_873.graphics.f("#FFFFFF").s().p("AjsDMQgigSgjgVQg6gmgogkQgigmABgeQA5iRDDhqIAXgUQChAECbAKIBQAMIAPADQBdARBaAbIgrASIgHADQhFAeg9AkQilBnhDBvIgLAWQgTA+g/AXQgZALggAFQgxgRg6gcgAGxivIAEgBIgEABgAGxivIAAAAg");
	this.shape_873.setTransform(246.9,270.7);

	this.shape_874 = new cjs.Shape();
	this.shape_874.graphics.f().s("#333333").ss(1,1,1).p("AG0iXQAFABAFACQgEgCgDgCQgBAAgCABQgcAJgbAJQhHAag+AfQinBYhQBnQgFAKgGAKQgcA4g9AZQgYAMgeAHQgygTg3gcQghgSgigWQg6gnglgkQgggoAIgeQA8iEDZhXQAMgJANgJQCfAGCZALIBOAOQBgATBcAhg");
	this.shape_874.setTransform(255.1,261.7);

	this.shape_875 = new cjs.Shape();
	this.shape_875.graphics.f("#FFFFFF").s().p("AkCC8QghgSgigWQg6gnglgkQgggoAIgeQA8iEDZhXIAZgRQCfAFCZALIBOAOQBgATBcAhIg3ASQhHAag+AeQinBZhQBnIgLAUQgcA5g9AYQgYALgeAIQgygSg3gdgAG0iXIADgBIAHAEIgKgDgAG0iXIAAAAg");
	this.shape_875.setTransform(255.1,261.7);

	this.shape_876 = new cjs.Shape();
	this.shape_876.graphics.f().s("#333333").ss(1,1,1).p("AnCgOQA/h5DuhFQANgHAOgHQCdAGCXANIBNAPQBiAYBfAmQgJgDgIgCQgeAHgdAIQhIAVg/AaQirBLhZBeQgJAKgHAJQghAzg8AZQgYAMgdAJQgwgTg1gdQghgSghgWQg5goghglQgfgpAPgcg");
	this.shape_876.setTransform(263.2,252.7);

	this.shape_877 = new cjs.Shape();
	this.shape_877.graphics.f("#FFFFFF").s().p("AkWCsQghgTghgVQg5goghglQgfgpAPgdQA/h5DuhFIAbgNQCdAGCXANIBNAPQBiAYBfAlIgRgEIg7APQhIAVg/AaQirBKhZBfIgQATQghAzg8AZQgYAMgdAJQgwgUg1gcg");
	this.shape_877.setTransform(263.2,252.7);

	this.shape_878 = new cjs.Shape();
	this.shape_878.graphics.f().s("#333333").ss(1,1,1).p("AnIgiQBDhsECgzQAPgFAPgGQCbAICUAOIBMARQBgAaBcAqQgOgDgNgDQgeAGgeAGQhIAQhBAVQiuA9hlBWQgKAIgIAJQgnAtg6AbQgYANgcAKQgwgVgygcQgggTgggWQg5gpgeglQgcgoAVgfg");
	this.shape_878.setTransform(271.2,243.6);

	this.shape_879 = new cjs.Shape();
	this.shape_879.graphics.f("#FFFFFF").s().p("AkqCcQgggTgggWQg5gpgeglQgcgoAVgfQBDhsECgzIAegLQCbAICUAOIBMARQBgAaBcAqIgbgGIg8AMQhIAQhBAVQiuA9hlBWIgSARQgnAtg6AbQgYANgcAKQgwgVgygcg");
	this.shape_879.setTransform(271.2,243.6);

	this.shape_880 = new cjs.Shape();
	this.shape_880.graphics.f().s("#333333").ss(1,1,1).p("AnOg2QBHhfEXggQAQgEAQgEQCaAJCRAPIBKATQBeAcBaAuQgTgDgSgCQgfADgeAEQhJALhCARQixAuhxBOQgLAIgKAHQgtAog4AcQgYANgaAMQgvgVgwgdQgggTgfgWQg4grgbglQgagqAbgfg");
	this.shape_880.setTransform(279.1,234.6);

	this.shape_881 = new cjs.Shape();
	this.shape_881.graphics.f("#FFFFFF").s().p("Ak9CMQgggTgfgWQg4grgbglQgagqAbgfQBHhfEXggIAggIQCaAJCRAPIBKATQBeAcBaAuIglgFIg9AHQhJALhCARQixAuhxBOIgVAPQgtAog4AcQgYANgaAMQgvgVgwgdg");
	this.shape_881.setTransform(279.1,234.6);

	this.shape_882 = new cjs.Shape();
	this.shape_882.graphics.f().s("#333333").ss(1,1,1).p("AnUhKQBLhSEsgOQARgCARgCQCYAJCPARIBJAVQBcAeBXAzQgZgEgXgDQgfACgeACQhKAGhEAMQizAhh+BFQgLAGgLAHQg0Ajg2AcQgXAPgZANQgvgXgugcQgfgTgdgXQg5gsgXglQgYgrAhggg");
	this.shape_882.setTransform(287.1,225.6);

	this.shape_883 = new cjs.Shape();
	this.shape_883.graphics.f("#FFFFFF").s().p("AlRB8QgfgTgdgXQg5gsgXglQgYgrAhggQBLhSEsgOIAigEQCYAJCPARIBJAVQBcAeBXAzIgwgHIg9AEQhKAGhEAMQizAhh+BFIgWANQg0Ajg2AcQgXAPgZANQgvgXgugcg");
	this.shape_883.setTransform(287.1,225.6);

	this.shape_884 = new cjs.Shape();
	this.shape_884.graphics.f().s("#333333").ss(1,1,1).p("AnZhdQBPhFFBAEQASgBASAAQCWAKCMATIBIAWQBZAhBVA2QgdgEgdgCQgfgBgeAAQhLABhFAIQi3ATiJA8QgNAGgNAFQg5Aeg0AdQgXAPgYAPQgugXgrgdQgfgUgdgWQg3gugUgjQgXgvAogfg");
	this.shape_884.setTransform(295,216.5);

	this.shape_885 = new cjs.Shape();
	this.shape_885.graphics.f("#FFFFFF").s().p("AljBsQgfgUgdgWQg3gugUgjQgXgvAogfQBPhFFBAEIAkgBQCWAKCMATIBIAWQBZAhBVA2Ig6gGIg9gBQhLABhFAIQi3ATiJA8IgaALQg5Aeg0AdIgvAeQgugXgrgdg");
	this.shape_885.setTransform(295,216.5);

	this.shape_886 = new cjs.Shape();
	this.shape_886.graphics.f().s("#333333").ss(1,1,1).p("AndhtQBSg4FWAXQCpALCbAWIBGAYQBYAkBSA4QlkgokABWQhQAbg9AlIgtAgQhQgqhAg2QiAhpBSg5g");
	this.shape_886.setTransform(302.8,207.1);

	this.shape_887 = new cjs.Shape();
	this.shape_887.graphics.f("#FFFFFF").s().p("AmvA1QiAhpBSg5QBSg4FWAXQCpALCbAWIBGAYQBYAkBSA4QlkgokABWQhQAbg9AlIgtAgQhQgqhAg2g");
	this.shape_887.setTransform(302.8,207.1);

	this.shape_888 = new cjs.Shape();
	this.shape_888.graphics.f().s("#333333").ss(1,1,1).p("Anhh0QAWgNAlgIQA3gMBXgCQBigCCDAHQAeABAcABQCIAHCCAfQAqARAcAKQBWAnBRA7QgOgBgOAAQjjgVi+AaQhcAPhTAaQhUAag8AiQgOAJgNAKQgHAEgHAFQhJgrg/g7QgOgMgLgLQg5g4AEgqQACgZAagUg");
	this.shape_888.setTransform(305.4,211);

	this.shape_889 = new cjs.Shape();
	this.shape_889.graphics.f("#FFFFFF").s().p("AmvAyIgZgXQg5g4AEgqQACgZAagUQAWgNAlgIQA3gMBXgCQBigCCDAHIA6ACQCIAHCCAfIBGAbQBWAnBRA7IgcgBQjjgVi+AaQhcAPhTAaQhUAag8AiIgbATIgOAJQhJgrg/g7g");
	this.shape_889.setTransform(305.4,211);

	this.shape_890 = new cjs.Shape();
	this.shape_890.graphics.f().s("#333333").ss(1,1,1).p("Anlh7QAXgMAmgIQA5gKBXgBQBmgBCBAFQAgABAbAAQCFACCFAsQApASAcAMQBWArBQA+QgNAAgNAAQjogVjBAaQhfANhTAZQhYAYg7AgQgPAIgKAIQgGAEgGAFQhCgtg/g/QgNgNgLgMQg4g4ACgtQABgZAXgUg");
	this.shape_890.setTransform(307.9,215);

	this.shape_891 = new cjs.Shape();
	this.shape_891.graphics.f("#FFFFFF").s().p("AmvAwIgYgZQg4g4ACgtQABgZAXgUQAXgMAmgIQA5gKBXgBQBmgBCBAFIA7ABQCFACCFAsIBFAeQBWArBQA+IgaAAQjogVjBAaQhfANhTAZQhYAYg7AgQgPAIgKAIIgMAJQhCgtg/g/g");
	this.shape_891.setTransform(307.9,215);

	this.shape_892 = new cjs.Shape();
	this.shape_892.graphics.f().s("#333333").ss(1,1,1).p("AnoiCQAXgLAmgHQA7gIBXgBQBrAACAADQAgAAAagBQCDgDCIA6QApAUAbANQBVAvBPBAQgMABgMACQjrgVjFAZQhhAMhUAXQhdAWg5AdQgPAHgHAHQgGAEgFAEQg7gug/hEQgMgNgMgNQg2g5gBguQABgZAVgVg");
	this.shape_892.setTransform(310.4,219);

	this.shape_893 = new cjs.Shape();
	this.shape_893.graphics.f("#FFFFFF").s().p("AmvAtIgYgaQg2g5gBguQABgZAVgWQAXgLAmgGQA7gJBXgBQBrABCAAEIA6gDQCDgCCIA6IBEAhQBVAuBPBBIgYACQjrgUjFAYQhhANhUAXQhdAWg5AdQgPAHgHAHIgLAHQg7gtg/hEg");
	this.shape_893.setTransform(310.4,219);

	this.shape_894 = new cjs.Shape();
	this.shape_894.graphics.f().s("#333333").ss(1,1,1).p("AnriJQAYgKAmgFQA9gHBYgBQBvACB+ABQAggBAbgDQCAgGCKBHQApAVAbAPQBTAyBOBDQgKACgLADQjvgTjJAWQhjALhVAWQhgAUg4AaQgPAGgGAGQgEADgFADQg0gug+hJQgMgOgLgNQg2g6gDgvQAAgaATgWg");
	this.shape_894.setTransform(312.8,222.8);

	this.shape_895 = new cjs.Shape();
	this.shape_895.graphics.f("#FFFFFF").s().p("AmuArIgXgbQg2g6gDgvQAAgaATgWQAYgKAmgFQA9gHBYgBIDtADQAggBAbgDQCAgGCKBHIBEAkQBTAyBOBDIgVAFQjvgTjJAWQhjALhVAWQhgAUg4AaQgPAGgGAGIgJAGQg0gug+hJg");
	this.shape_895.setTransform(312.8,222.8);

	this.shape_896 = new cjs.Shape();
	this.shape_896.graphics.f().s("#333333").ss(1,1,1).p("AnviOQAagJAmgFQA/gFBXAAQB0ADB8gBQAhgCAbgEQB9gLCNBUQAoAYAbAPQBTA1BMBHQgJADgKAEQjygSjNAUQhmALhWAUQhkASg2AYQgPAEgEAFQgDACgEADQgtgvg9hPQgMgOgMgOQg0g6gFgxQgCgaARgWg");
	this.shape_896.setTransform(315.3,226.6);

	this.shape_897 = new cjs.Shape();
	this.shape_897.graphics.f("#FFFFFF").s().p("AmtApIgYgcQg0g6gFgxQgCgaARgWQAagJAmgFQA/gFBXAAQB0ADB8gBQAhgCAbgEQB9gLCNBUIBDAnQBTA1BMBHIgTAHQjygSjNAUQhmALhWAUQhkASg2AYQgPAEgEAFIgHAFQgtgvg9hPg");
	this.shape_897.setTransform(315.3,226.6);

	this.shape_898 = new cjs.Shape();
	this.shape_898.graphics.f().s("#333333").ss(1,1,1).p("AnyiUQAagIAmgDQBBgFBYABQB4AFB7gDQAigDAagFQB6gPCQBhQAnAZAbARQBSA3BMBMQgJAEgJAEQj1gRjRATQhpAJhWATQhoAQg1AVQgQAEgBACQgCADgEACQglgwg9hUQgMgOgLgPQgzg7gHgzQgDgaAPgXg");
	this.shape_898.setTransform(317.8,230.4);

	this.shape_899 = new cjs.Shape();
	this.shape_899.graphics.f("#FFFFFF").s().p("AmtAoIgXgdQgzg6gHgzQgDgbAPgXQAagIAmgEQBBgDBYABQB4AEB7gDQAigDAagFQB6gPCQBhIBCAqQBSA3BMBMIgSAIQj1gRjRATQhpAJhWATQhoAQg1AVQgQAEgBADIgGAEQglgxg9hTg");
	this.shape_899.setTransform(317.8,230.4);

	this.shape_900 = new cjs.Shape();
	this.shape_900.graphics.f().s("#333333").ss(1,1,1).p("An1iZQAbgHAmgDQBDgCBYABQB9AGB5gFQAigDAagHQB4gUCSBvQAnAbAbASQBQA6BLBPQgHAFgIAFQj5gQjVARQhrAJhXARQhsAOgzASQgQADABACQgCABgCACQgegyg9hYQgMgPgLgPQgxg7gKg1QgEgbANgXg");
	this.shape_900.setTransform(320.3,234.2);

	this.shape_901 = new cjs.Shape();
	this.shape_901.graphics.f("#FFFFFF").s().p("AmsAnIgXgeQgxg7gKg1QgEgbANgXQAbgHAmgDQBDgCBYABQB9AGB5gFQAigDAagHQB4gUCSBvIBCAtQBQA6BLBPIgPAKQj5gQjVARQhrAJhXARQhsAOgzASQgQADABACIgEADQgegyg9hYg");
	this.shape_901.setTransform(320.3,234.2);

	this.shape_902 = new cjs.Shape();
	this.shape_902.graphics.f().s("#333333").ss(1,1,1).p("An4ieQAcgGAmgCQBFgBBYACQCBAHB4gGQAhgFAbgIQB1gYCWB8QAmAcAaAUQBQA+BKBSQgHAFgGAHQj8gPjaAPQhtAIhYAPQhvAMgzAQQgQACADAAQAAABgCABQgXgyg8heQgMgPgLgQQgwg8gMg2QgFgbALgYg");
	this.shape_902.setTransform(322.7,237.9);

	this.shape_903 = new cjs.Shape();
	this.shape_903.graphics.f("#FFFFFF").s().p("AmrAmIgXgfQgwg8gMg2QgFgbALgYQAcgGAmgCQBFgBBYACQCBAHB4gGQAhgFAbgIQB1gYCWB8IBAAwQBQA+BKBSIgNAMQj8gPjaAPQhtAIhYAPQhvAMgzAQIgNACIgCACQgXgyg8heg");
	this.shape_903.setTransform(322.7,237.9);

	this.shape_904 = new cjs.Shape();
	this.shape_904.graphics.f().s("#333333").ss(1,1,1).p("AlfC6QgQgzg7hiQgLgQgLgQQgvg9gPg4QgGgbAJgZQAdgEAmgCQBHABBYADQCGAIB2gJQAhgFAcgJQBygcCYCJQAmAeAaAUQBPBCBIBVQgFAGgGAIQj/gOjeANQhvAHhZAOQhzAKgxANQgJABgCgBQAAABgBAAQAAAAAAgBAleC6QgBAAAAAAIAAAAIABAAg");
	this.shape_904.setTransform(325.2,241.7);

	this.shape_905 = new cjs.Shape();
	this.shape_905.graphics.f("#FFFFFF").s().p("AlfC6IABAAIgBABIAAgBgAleC6IAAAAIgBAAIABAAIAAAAIgBAAIAAAAQgQgzg7hiIgWggQgvg9gPg4QgGgbAJgZQAdgEAmgCICfAEQCGAIB2gJQAhgFAcgJQBygcCYCJIBAAyQBPBCBIBVIgLAOQj/gOjeANQhvAHhZAOQhzAKgxANIgHABIgEgBgAleC6IAAAAg");
	this.shape_905.setTransform(325.2,241.7);

	this.shape_906 = new cjs.Shape();
	this.shape_906.graphics.f().s("#333333").ss(1,1,1).p("An+iqQAdgEAnAAQBJACBYADQCKAJB1gKQAigGAbgLQBvggCcCWQAlAgAZAWQBOBFBIBYQgEAHgFAJQkDgNjhAMQhyAFhZAMQh4AJgwAKQgQAAAIgDQABABAAgBQgJg0g7hnQgLgRgLgQQgug+gRg5QgGgcAGgZg");
	this.shape_906.setTransform(327.6,245.6);

	this.shape_907 = new cjs.Shape();
	this.shape_907.graphics.f("#FFFFFF").s().p("AlmC+IABAAQgJg0g7hnIgWghQgug+gRg5QgGgcAGgZQAdgEAnAAIChAFQCKAJB1gKQAigGAbgLQBvggCcCWIA+A2QBOBFBIBYIgJAQQkDgNjhAMQhyAFhZAMQh4AJgwAKQgQAAAIgDg");
	this.shape_907.setTransform(327.6,245.6);

	this.shape_908 = new cjs.Shape();
	this.shape_908.graphics.f().s("#333333").ss(1,1,1).p("AoBixQAfgDAnAAQBLAEBXAEQCPALB0gNQAigGAbgMQBsglCfCjQAlAiAYAXQBNBJBHBaQgDAJgEAJQkGgMjmAKQh0AFhaAKQh7AHgvAIQgQgCAKgDQACgBAAgBQgBg1g7hsQgLgRgKgPQgthAgTg7QgIgdAEgZg");
	this.shape_908.setTransform(330,249.6);

	this.shape_909 = new cjs.Shape();
	this.shape_909.graphics.f("#FFFFFF").s().p("AluDDIACgCQgBg1g7hsIgVggQgthAgTg7QgIgdAEgZQAfgDAnAAICiAIQCPALB0gNQAigGAbgMQBsglCfCjIA9A5QBNBJBHBaIgHASQkGgMjmAKQh0AFhaAKQh7AHgvAIQgQgCAKgDg");
	this.shape_909.setTransform(330,249.6);

	this.shape_910 = new cjs.Shape();
	this.shape_910.graphics.f().s("#333333").ss(1,1,1).p("AoDi4QAfgCAnABQBNAGBYAEQCTAMBygOQAjgIAbgNQBqgpCgCwQAlAjAZAYQBMBNBFBeQgCAKgCAJQkKgKjqAIQh2AEhbAJQh/AFgtAFQgRgDAMgFQACgBACgBQAGg3g7hxQgKgRgLgQQgrhBgVg9QgJgcACgag");
	this.shape_910.setTransform(332.4,253.5);

	this.shape_911 = new cjs.Shape();
	this.shape_911.graphics.f("#FFFFFF").s().p("Al2DHIAEgCQAGg3g7hxIgVghQgrhBgVg9QgJgcACgaQAfgCAnABQBNAGBYAEQCTAMBygOQAjgIAbgNQBqgpCgCwIA+A7QBMBNBFBeIgEATQkKgKjqAIQh2AEhbAJQh/AFgtAFQgRgDAMgFg");
	this.shape_911.setTransform(332.4,253.5);

	this.shape_912 = new cjs.Shape();
	this.shape_912.graphics.f().s("#333333").ss(1,1,1).p("AoFi/QAggBAnACQBPAHBYAFQCYANBwgQQAkgIAagPQBngtCkC9QAkAlAYAXQBLBTBFBgQgBALgCALQkNgJjuAGQh4ADhcAHQiDADgsADQgRgFAOgGQAEgBACgCQANg3g6h3QgKgRgKgRQgqhBgYg/QgKgdAAgag");
	this.shape_912.setTransform(334.8,257.5);

	this.shape_913 = new cjs.Shape();
	this.shape_913.graphics.f("#FFFFFF").s().p("Al+DLIAGgDQANg3g6h3IgUgiQgqhBgYg/QgKgdAAgaQAggBAnACQBPAHBYAFQCYANBwgQQAkgIAagPQBngtCkC9IA8A8QBLBTBFBgIgDAWQkNgJjuAGQh4ADhcAHQiDADgsADQgRgFAOgGg");
	this.shape_913.setTransform(334.8,257.5);

	this.shape_914 = new cjs.Shape();
	this.shape_914.graphics.f().s("#333333").ss(1,1,1).p("AoHjGQAhAAAnADQBRAIBYAGQCcAOBvgSQAlgJAagQQBkgxCmDKQAkAnAYAYQBKBWBEBkQgBAMAAALQkRgIjxAFQh8AChcAFQiHABgqAAQgSgFARgIQAEgBAEgDQAUg4g6h8QgKgSgKgRQgphCgahAQgLgdgCgbg");
	this.shape_914.setTransform(337.1,261.4);

	this.shape_915 = new cjs.Shape();
	this.shape_915.graphics.f("#FFFFFF").s().p("AmFDPQAEgBAEgDQAUg4g6h8IgUgjQgphCgahAQgLgdgCgbQAhAAAnADQBRAIBYAGQCcAOBvgSQAlgJAagQQBkgxCmDKIA8A/QBKBWBEBkIgBAXQkRgIjxAFQh8AChcAFIixABQgSgFARgIg");
	this.shape_915.setTransform(337.1,261.4);

	this.shape_916 = new cjs.Shape();
	this.shape_916.graphics.f().s("#333333").ss(1,1,1).p("AoJjPQAhACAoADQBSAKBZAHQCgAPBugUQAlgKAagRQBhg2CpDYQAkAoAXAaQBJBaBDBmQABANAAAMQkUgHj2ADQh9ABhdAEQiLgBgpgDQgSgGATgJQAFgCAEgDQAcg6g5iAQgKgSgKgSQgohDgchCQgMgdgEgcg");
	this.shape_916.setTransform(339.5,265.5);

	this.shape_917 = new cjs.Shape();
	this.shape_917.graphics.f("#FFFFFF").s().p("AmODhQgSgGATgJIAJgFQAcg6g5iAIgUgkQgohDgchCQgMgdgEgcIBJAFQBSAKBZAHQCgAPBugUQAlgKAagRQBhg2CpDYIA7BCQBJBaBDBmIABAZQkUgHj2ADQh9ABhdAEQiLgBgpgDg");
	this.shape_917.setTransform(339.5,265.5);

	this.shape_918 = new cjs.Shape();
	this.shape_918.graphics.f().s("#333333").ss(1,1,1).p("AoMjaQAiADAoAEQBUAMBZAHQClARBsgWQAlgLAagSQBeg6CtDkQAjAqAWAbQBJBeBBBpQACAOACANQkYgGj3ABQiCAAheACQiPgCgogFQgRgIAVgKQAGgDAFgEQAig6g4iFQgKgRgKgVQgmhDgfhDQgNgegGgdg");
	this.shape_918.setTransform(342,269.8);

	this.shape_919 = new cjs.Shape();
	this.shape_919.graphics.f("#FFFFFF").s().p("AgCDqQiCAAheACQiPgCgogFQgRgIAVgKQAGgDAFgEQAig6g4iFIgUgmQgmhDgfhDQgNgegGgdIBKAHQBUAMBZAHQClARBsgWQAlgLAagSQBeg6CtDkQAjAqAWAbQBJBeBBBpIAEAbQkYgGj3ABg");
	this.shape_919.setTransform(342,269.8);

	this.shape_920 = new cjs.Shape();
	this.shape_920.graphics.f().s("#333333").ss(1,1,1).p("AoPjlQAkAEAnAFQBXAOBYAHQCqASBqgYQAmgLAagUQBcg/CuDyQAjAsAXAcQBHBhBABsQAEAPACAPQkbgFj8gBQiEgBhfABQiSgFgngIQgRgJAWgLQAIgDAGgFQApg7g4iKQgJgSgLgVQgkhDghhFQgPgfgIgdg");
	this.shape_920.setTransform(344.4,274.2);

	this.shape_921 = new cjs.Shape();
	this.shape_921.graphics.f("#FFFFFF").s().p("AgHD0QiEgBhfABQiTgFgmgIQgSgJAYgLIAMgIQAqg7g5iKIgTgnQgkhDgihFQgOgfgIgdIBLAJQBXAOBYAHQCqASBqgYQAmgLAagUQBbg/CvDyIA6BIQBGBhBBBsIAGAeQkbgFj8gBg");
	this.shape_921.setTransform(344.4,274.2);

	this.shape_922 = new cjs.Shape();
	this.shape_922.graphics.f().s("#333333").ss(1,1,1).p("AoSjvQAkAFAoAGQBYAOBZAJQCuATBngaQApgMAZgWQBZhCCxD/QAiAtAXAeQBGBkBABwQAEAPAEAQQkfgEkAgDQiHgChfgBQiWgGgmgLQgSgJAagNQAIgEAGgFQAxg8g4iPQgJgSgKgWQgjhEgkhHQgPgfgKgdg");
	this.shape_922.setTransform(346.9,278.5);

	this.shape_923 = new cjs.Shape();
	this.shape_923.graphics.f("#FFFFFF").s().p("AgMD+IjlgDQiXgGgmgLQgSgJAagNQAIgEAGgFQAyg8g4iPIgTgoIhHiLQgPgfgLgdIBMALQBYAOBZAJQCuATBngaQApgMAZgWQBZhCCyD/IA4BLQBGBkBABwIAIAfIofgHg");
	this.shape_923.setTransform(346.9,278.5);

	this.shape_924 = new cjs.Shape();
	this.shape_924.graphics.f().s("#333333").ss(1,1,1).p("AoVj6QAlAGAoAGQBbARBYAJQCzAUBmgcQApgNAZgWQBWhHC0EMQAiAvAWAfQBFBoA/ByQAFARAFAQQkigDkEgEQiJgDhggDQibgIgkgNQgSgLAcgOQAJgEAHgGQA4g9g3iSQgJgVgKgWQgihFgmhIQgQgfgNgeg");
	this.shape_924.setTransform(349.3,282.8);

	this.shape_925 = new cjs.Shape();
	this.shape_925.graphics.f("#FFFFFF").s().p("AgQEIIjpgGQibgIgkgNQgSgLAcgOQAJgEAHgGQA4g9g3iSIgTgrQgihFgmhIQgQgfgNgeIBNAMQBbARBYAJQCzAUBmgcQApgNAZgWQBWhHC0EMIA4BOQBFBoA/ByIAKAhQkigDkEgEg");
	this.shape_925.setTransform(349.3,282.8);

	this.shape_926 = new cjs.Shape();
	this.shape_926.graphics.f().s("#333333").ss(1,1,1).p("AoYkFQAmAHAoAHQBdASBZAKQC3AVBkgeQApgNAZgYQBThLC4EZQAhAxAVAgQBFBrA9B2QAHARAGASQkmgCkIgGQiLgEhhgEQiegKgjgQQgSgMAdgQQAKgEAIgHQA/g+g2iXQgJgVgKgXQghhFgohKQgRgggPgeg");
	this.shape_926.setTransform(351.7,287.2);

	this.shape_927 = new cjs.Shape();
	this.shape_927.graphics.f("#FFFFFF").s().p("AgVESIjsgIQiegKgjgQQgSgMAdgQQAKgEAIgHQA/g+g2iXIgTgsQghhFgohKQgRgggPgeIBOAOQBdASBZAKQC3AVBkgeQApgNAZgYQBThLC4EZQAhAxAVAgQBFBrA9B2IANAjQkmgCkIgGg");
	this.shape_927.setTransform(351.7,287.2);

	this.shape_928 = new cjs.Shape();
	this.shape_928.graphics.f().s("#333333").ss(1,1,1).p("AobkQQAoAIAoAJQBeATBZAKQC7AXBjggQAqgOAZgaQBRhPC5EnQAhAyAWAhQBDBwA8B4QAIASAHATQkpgBkMgIQiOgFhigGQiigLghgTQgTgNAhgRQAKgFAJgHQBGg/g2icQgIgWgKgXQgghGgrhMQgSgggRgfg");
	this.shape_928.setTransform(354.2,291.5);

	this.shape_929 = new cjs.Shape();
	this.shape_929.graphics.f("#FFFFFF").s().p("AgaEcQiNgFhigGQiigLghgTQgSgNAfgRQALgFAJgHQBGg/g3icIgSgtQgfhGgqhMQgTgggRgfIBQARQBeATBZAKQC7AXBjggQAqgOAZgaQBRhPC5EnIA2BTQBDBwA9B4IAOAlQkpgBkMgIg");
	this.shape_929.setTransform(354.2,291.5);

	this.shape_930 = new cjs.Shape();
	this.shape_930.graphics.f().s("#333333").ss(1,1,1).p("AoekbQAoAJAoAJQBhAVBZALQDAAYBhgiQArgPAYgaQBOhUC8E0QAhA0AVAiQBCBzA8B7QAJAUAHATQktABkPgKQiRgGhigHQimgOgggVQgTgPAjgSQALgFAKgIQBNhAg2ihQgHgWgKgYQgfhHgshNQgUgggTggg");
	this.shape_930.setTransform(356.6,295.8);

	this.shape_931 = new cjs.Shape();
	this.shape_931.graphics.f("#FFFFFF").s().p("AgeEmQiQgGhigHQingOgfgVQgUgPAjgSQAMgFAJgIQBNhAg2ihQgHgWgKgYQgehHgthNIgmhAIBQASQBgAVBZALQDAAYBhgiQArgPAYgaQBOhUC9E0QAgA0AVAiQBDBzA7B7IARAnIgdAAQkeAAkCgJg");
	this.shape_931.setTransform(356.6,295.8);

	this.shape_932 = new cjs.Shape();
	this.shape_932.graphics.f().s("#333333").ss(1,1,1).p("AogkmIBRAUQBiAXBZALQEbAkBNhaQBNhbDIFVQBkCpBUC9QkwABkUgMQosgYCAhBQCAhChcjjQgdhHgvhPg");
	this.shape_932.setTransform(359,300.2);

	this.shape_933 = new cjs.Shape();
	this.shape_933.graphics.f("#FFFFFF").s().p("AgjEvQosgYCAhBQCAhChcjjQgdhHgvhPIgphBIBRAUQBiAXBZALQEbAkBNhaQBNhbDIFVQBkCpBUC9IhDAAQkMAAj1gLg");
	this.shape_933.setTransform(359,300.2);

	this.shape_934 = new cjs.Shape();
	this.shape_934.graphics.f().s("#333333").ss(1,1,1).p("AoakCIBPARQBfASBXAHQETAbBKheQA9hKCHC9QAlAyApBDQBoCkBZC3Qg1ABg1AAQjoAIjXAAQhfAAhKgCQldgYBegzQB1g+hejaQgfhEgxhMg");
	this.shape_934.setTransform(365.4,306.6);

	this.shape_935 = new cjs.Shape();
	this.shape_935.graphics.f("#FFFFFF").s().p("Ai3EvQldgYBegzQB0g+hdjaQgghEgwhMIgrg+IBPARQBfASBXAHQETAbBKheQA8hKCIC9QAlAyApBDQBoCkBZC3IhqABQjpAIjWAAQhfAAhKgCg");
	this.shape_935.setTransform(365.4,306.6);

	this.shape_936 = new cjs.Shape();
	this.shape_936.graphics.f().s("#333333").ss(1,1,1).p("AoUjmIBNANQBcANBUADQELATBJhiQA7hNCDCxQAmAwArBCQBrCfBeCxQgxACgxAAQjeASjPAJQhZADhIACQlWgWBUgwQBqg7hhjQQgihBgyhJg");
	this.shape_936.setTransform(371.8,313.8);

	this.shape_937 = new cjs.Shape();
	this.shape_937.graphics.f("#FFFFFF").s().p("AmdDqQBqg7hhjQQgihBgyhJIgsg7IBNANQBcANBUADQELATBJhiQA7hNCDCxQAmAwArBCQBrCfBeCxIhiACQjeASjPAJIihAFQlWgWBUgwg");
	this.shape_937.setTransform(371.8,313.8);

	this.shape_938 = new cjs.Shape();
	this.shape_938.graphics.f().s("#333333").ss(1,1,1).p("AoNjLIBKAJQBaAJBRgBQEBAKBIhmQA6hPB/CkQAoAvArA/QBwCbBiCsQgtACgsABQjVAajFATQhWAHhEAGQlPgUBJguQBeg4hkjGQgjg+gzhFg");
	this.shape_938.setTransform(378.2,321.1);

	this.shape_939 = new cjs.Shape();
	this.shape_939.graphics.f("#FFFFFF").s().p("AmEDvQBeg4hjjGQgkg+gzhFIgug5IBKAJQBbAJBRgBQEBAKBIhmQA6hPB/CkQAnAvAsA/QBwCbBhCsIhYADQjVAajFATIiaANQlPgUBJgug");
	this.shape_939.setTransform(378.2,321.1);

	this.shape_940 = new cjs.Shape();
	this.shape_940.graphics.f().s("#333333").ss(1,1,1).p("AoHiwIBHAFQBXAEBPgEQD5ABBGhqQA5hRB7CXQApAuAtA9QBzCVBmCnQgoACgoACQjLAji8AdQhRAKhBAKQlIgSA+grQBTg1hmi/Qgmg5g0hBg");
	this.shape_940.setTransform(384.5,328.5);

	this.shape_941 = new cjs.Shape();
	this.shape_941.graphics.f("#FFFFFF").s().p("AlrD0QBTg1hmi/Qgmg5g0hBIgvg2IBHAFQBXAEBPgEQD5ABBGhqQA5hRB7CXQApAuAtA9QBzCVBmCnIhQAEQjLAji8AdQhRAKhBAKQlIgSA+grg");
	this.shape_941.setTransform(384.5,328.5);

	this.shape_942 = new cjs.Shape();
	this.shape_942.graphics.f().s("#333333").ss(1,1,1).p("AoBiUIBFAAQBVAABMgJQDvgHBGhuQA4hTB3CKQAqAtAtA7QB4CQBqChQgkADgjACQjBAtizAmQhOAOg+AOQlAgRAzgoQBIgxhpi2Qgng2g3g+g");
	this.shape_942.setTransform(390.9,335.8);

	this.shape_943 = new cjs.Shape();
	this.shape_943.graphics.f("#FFFFFF").s().p("AlSD5QBIgxhpi2Qgng2g3g+IgwgyIBGAAQBUAABMgJQDvgHBFhuQA4hTB4CKQAqAtAtA7QB4CQBqChIhHAFQjBAti0AmQhNAOg9AOQlCgRA0gog");
	this.shape_943.setTransform(390.9,335.8);

	this.shape_944 = new cjs.Shape();
	this.shape_944.graphics.f().s("#333333").ss(1,1,1).p("An7h5IBDgDQBSgFBKgNQDmgQBEhyQA3hVBzB+QArArAvA5QB7CLBvCcQggADgfADQi3A2iqAvQhMASg4ASQk6gQApglQA9guhsisQgqgyg3g7g");
	this.shape_944.setTransform(397.3,343.1);

	this.shape_945 = new cjs.Shape();
	this.shape_945.graphics.f("#FFFFFF").s().p("Ak5D+QA9guhsisQgqgyg3g7IgygwIBDgDQBSgFBKgNQDmgQBEhyQA3hVBzB+QArArAvA5QB7CLBvCcIg/AGQi3A2iqAvQhMASg4ASQk6gQApglg");
	this.shape_945.setTransform(397.3,343.1);

	this.shape_946 = new cjs.Shape();
	this.shape_946.graphics.f().s("#333333").ss(1,1,1).p("An0hdIBAgHQBPgJBHgRQDdgaBEh1QA1hXBvBxQAsApAwA3QB/CJB0CUQgbAEgbADQitA/iiA4QhHAWg1AWQk0gOAfgiQAygrhviiQgrgyg5g1g");
	this.shape_946.setTransform(403.7,350.3);

	this.shape_947 = new cjs.Shape();
	this.shape_947.graphics.f("#FFFFFF").s().p("AkgEEQAygrhviiQgsgyg4g1Ig0gtIBBgHQBOgJBIgRQDdgaBDh1QA2hXBvBxQAsApAwA3QB/CJB0CUIg2AHQiuA/ihA4QhHAWg1AWQkzgOAegig");
	this.shape_947.setTransform(403.7,350.3);

	this.shape_948 = new cjs.Shape();
	this.shape_948.graphics.f().s("#333333").ss(1,1,1).p("AnuhBIA+gLQBMgNBFgWQDUghBEh6QAyhZBrBkQAtAoAxA1QCDCEB4COQgXAFgVADQikBIiYBDQhEAZg0AZQkqgLAUggQAngnhyiZQgugvg6gxg");
	this.shape_948.setTransform(410,357.5);

	this.shape_949 = new cjs.Shape();
	this.shape_949.graphics.f("#FFFFFF").s().p("AkHEKQAngnhyiZQgugvg6gxIg0grIA+gLQBMgNBFgWQDUghBEh6QAyhZBrBkQAtAoAxA1QCDCEB4COIgsAIIk8CLQhEAZg0AZQkqgLAUggg");
	this.shape_949.setTransform(410,357.5);

	this.shape_950 = new cjs.Shape();
	this.shape_950.graphics.f().s("#333333").ss(1,1,1).p("AnoglIA8gPQBJgSBCgZQDLgrBDh9QAyhcBmBYQAvAnAyAyQCHCAB8CIQgSAFgSAEQiaBRiPBMQg/AegxAdQkjgKAKgdQAbgkh0iQQgwgrg8gwg");
	this.shape_950.setTransform(416.4,364.8);

	this.shape_951 = new cjs.Shape();
	this.shape_951.graphics.f("#FFFFFF").s().p("AjuEQQAcgkh1iQQgvgrg9gwIg1gmIA8gPQBJgSBCgZQDLgrBDh9QAxhcBnBYQAvAnAyAyQCGCAB9CIIgkAJIkpCdQg/AegxAdQkjgKAJgdg");
	this.shape_951.setTransform(416.4,364.8);

	this.shape_952 = new cjs.Shape();
	this.shape_952.graphics.f().s("#333333").ss(1,1,1).p("AnigIIA6gTQBGgXBAgdQDCgzBCiBQAwheBiBLQAwAlAzAxQCLB6CBCDQgOAGgNAEQiRBbiGBVQg7AhguAhQkbgIgCgaQARghh3iGQgzgog9gtg");
	this.shape_952.setTransform(422.8,371.9);

	this.shape_953 = new cjs.Shape();
	this.shape_953.graphics.f("#FFFFFF").s().p("AjVEXQARghh3iGQgzgog9gtIg3gjIA6gTQBGgXBAgdQDCgzBCiBQAwheBiBLQAwAlAzAxQCLB6CBCDIgbAKIkXCwQg7AhguAhQkbgIgCgag");
	this.shape_953.setTransform(422.8,371.9);

	this.shape_954 = new cjs.Shape();
	this.shape_954.graphics.f().s("#333333").ss(1,1,1).p("AnbASIA3gUQBDgcA+ghQC4g8BBiFQAvhgBfA+QAxAkA0AvQCOB1CGB+QgKAGgJAFQiGBjh9BfQg3AlgrAlQkUgHgMgXQAFgeh6h8Qg0glg/gqg");
	this.shape_954.setTransform(429.2,379.1);

	this.shape_955 = new cjs.Shape();
	this.shape_955.graphics.f("#FFFFFF").s().p("Ai8EdQAGgeh7h8Qg0glg+gqIg5giIA4gUQBDgcA+ghQC4g8BBiFQAvhgBeA+QAxAkA1AvQCOB1CFB+IgSALQiHBjh8BfQg4AlgqAlQkVgHgMgXg");
	this.shape_955.setTransform(429.2,379.1);

	this.shape_956 = new cjs.Shape();
	this.shape_956.graphics.f().s("#333333").ss(1,1,1).p("AnVAwIA1gaQBAgeA7gmQCwhFA/iIQAwhiBZAxQAyAjA1AsQCSBxCKB4QgFAGgEAGQh9Bsh0BoQgzApgnApQkOgFgXgUQgGgbh8hzQg3gihAgmg");
	this.shape_956.setTransform(435.5,386.2);

	this.shape_957 = new cjs.Shape();
	this.shape_957.graphics.f("#FFFFFF").s().p("AijElQgGgbh8hzQg3gihAgmIg5gfIA1gaQBAgeA7gmQCwhFA/iIQAwhiBZAxQAyAjA1AsQCSBxCKB4IgJAMQh9Bsh0BoQgzApgnApQkOgFgXgUg");
	this.shape_957.setTransform(435.5,386.2);

	this.shape_958 = new cjs.Shape();
	this.shape_958.graphics.f().s("#333333").ss(1,1,1).p("AnPBOIAzgfQA9gkA5goQCmhNA/iNQAvhkBUAlQA0AhA2AqQCWBsCOB0QAAAHAAAEQhzB2hrByQgvAsgkAtQkHgDghgSQgRgXiAhpQg5gfhBgjg");
	this.shape_958.setTransform(441.9,393.3);

	this.shape_959 = new cjs.Shape();
	this.shape_959.graphics.f("#FFFFFF").s().p("AiJEsQgSgXh/hpIh6hCIg7gcIAzgfQA9gkA4goQCnhNA/iNQAvhkBUAlQA0AhA2AqQCWBsCOB0IAAAMQh0B1hqByQgwAsgjAtQkHgDghgSg");
	this.shape_959.setTransform(441.9,393.3);

	this.shape_960 = new cjs.Shape();
	this.shape_960.graphics.f().s("#333333").ss(1,1,1).p("AnNBtIAxgjQA6goA3gsQCdhWA+iRQAuhmBPAYQA1AgA4AoQCaBnCSBvQAEAHAEAHQhpB9hhB7QgsAwghAwQj/gBgsgOQgcgViChfQg7gchDggg");
	this.shape_960.setTransform(448.7,400.2);

	this.shape_961 = new cjs.Shape();
	this.shape_961.graphics.f("#FFFFFF").s().p("Ah0E2Iifh0Ih9g8Ig9gZIAxgjQA7goA2gsQCchWA/iRQAthmBQAYQA1AgA3AoQCbBnCRBvIAJAOQhpB9hhB7QgsAwghAwQj/gBgsgOg");
	this.shape_961.setTransform(448.7,400.2);

	this.shape_962 = new cjs.Shape();
	this.shape_962.graphics.f().s("#333333").ss(1,1,1).p("AnLCNIAugnQA4gtAzgyQCVhdA8iVQAthoBMALQA2AfA4AmQCeBiCXBpQAIAIAJAHQhfCGhZCFQgnA0geA0Qj4AAg3gLQgngRiFhWQg9gZhEgcg");
	this.shape_962.setTransform(455.5,407.1);

	this.shape_963 = new cjs.Shape();
	this.shape_963.graphics.f("#FFFFFF").s().p("AhgE/QgngRiFhWIiBg1Ig+gWIAugnQA4gtAzgyQCVhdA8iVQAthoBMALQA2AfA4AmQCeBiCXBpIARAPQhfCGhZCFQgnA0geA0IgUAAQjmAAg1gLg");
	this.shape_963.setTransform(455.5,407.1);

	this.shape_964 = new cjs.Shape();
	this.shape_964.graphics.f().s("#333333").ss(1,1,1).p("AnJCtIAsgrQA1gxAxg3QCLhlA7iZQAshqBIgBQA3AdA6AkQChBdCbBkQANAIANAIQhVCPhPCOQgkA4gaA4QjxAChCgJQgzgOiHhMQg/gWhGgZg");
	this.shape_964.setTransform(462.3,413.9);

	this.shape_965 = new cjs.Shape();
	this.shape_965.graphics.f("#FFFFFF").s().p("AhLFJQgzgOiHhMIiFgvIg/gTIAsgrQA1gxAxg3QCLhlA7iZQAshqBIgBQA3AdA6AkQChBdCbBkIAaAQQhVCPhPCOQgkA4gaA4IhWAAQioAAg1gHg");
	this.shape_965.setTransform(462.3,413.9);

	this.shape_966 = new cjs.Shape();
	this.shape_966.graphics.f().s("#333333").ss(1,1,1).p("AnHDOIAqgvQAxg2Avg6QCChvA7icQAqhsBGgOQA2AbA7AiQClBYCgBfQARAIARAJQhLCYhGCXQgfA8gYA8QjsAEhKgGQg+gLiKhDQhBgShHgWg");
	this.shape_966.setTransform(469.1,420.6);

	this.shape_967 = new cjs.Shape();
	this.shape_967.graphics.f("#FFFFFF").s().p("Ag2FUQg+gLiKhDIiIgoIhCgQIAqgvQAyg2Avg6QCChvA7icQAqhsBFgOQA3AbA6AiQCmBYCfBfIAjARQhMCYhFCXQggA8gXA8IijABQhmAAgtgDg");
	this.shape_967.setTransform(469.1,420.6);

	this.shape_968 = new cjs.Shape();
	this.shape_968.graphics.f().s("#333333").ss(1,1,1).p("AnGDuIAogzQAvg7Asg+QB5h3A6igQAphvBCgaQA4AaA7AgQCpBTCkBZQAWAJAWAJQhDChg8ChQgbBAgVA/QjkAGhWgDQhIgIiNg5QhDgQhJgSg");
	this.shape_968.setTransform(475.9,427.5);

	this.shape_969 = new cjs.Shape();
	this.shape_969.graphics.f("#FFFFFF").s().p("AghFeQhKgIiNg5IiLgiIhDgNIAogzQAvg7Asg+QB5h3A6igQAphvBBgaQA5AaA7AgQCpBTCkBZIArASQhCChg9ChQgaBAgVA/QiUAEhYAAIhNgBg");
	this.shape_969.setTransform(475.9,427.5);

	this.shape_970 = new cjs.Shape();
	this.shape_970.graphics.f().s("#333333").ss(1,1,1).p("AnEEOIAmg3QAsg/AphDQBwh/A4ikQAphxA9goQA7AZA7AeQCtBOCoBUQAaAJAbAKQg5CqgzCrQgYBDgRBDQjdAIhggBQhUgEiQgwQhFgMhKgPg");
	this.shape_970.setTransform(482.7,434.3);

	this.shape_971 = new cjs.Shape();
	this.shape_971.graphics.f("#FFFFFF").s().p("AgNFnQhUgEiQgwIiPgbIhEgKIAmg3QAsg/AphDQBwh/A4ikQAphxA9goQA7AZA7AeQCtBOCoBUIA1ATQg5CqgzCrQgYBDgRBDQjPAIhhAAIgNgBg");
	this.shape_971.setTransform(482.7,434.3);

	this.shape_972 = new cjs.Shape();
	this.shape_972.graphics.f().s("#333333").ss(1,1,1).p("AnCEtIAjg6QAphEAnhHQBniIA3ioQAnhzA6g0QA8AXA8AbQCwBLCtBNQAfAKAfAKQgvC0grC0QgSBHgOBGQjYAKhsACQhdAAiTgnQhGgJhMgLg");
	this.shape_972.setTransform(489.6,441.3);

	this.shape_973 = new cjs.Shape();
	this.shape_973.graphics.f("#FFFFFF").s().p("AjrFJIiSgUIhFgJIAjg5QAphEAnhHQBniIA3ipQAnhyA5g0QA9AXA8AbQCwBLCuBNIA9AUQgvCzgqC1QgUBGgNBHQjYAKhsADQhdgBiTgng");
	this.shape_973.setTransform(489.6,441.3);

	this.shape_974 = new cjs.Shape();
	this.shape_974.graphics.f().s("#333333").ss(1,1,1).p("AnAFMIAhg+QAmhJAlhKQBeiSA2irQAmh2A1hAQA9AWA9AZQC0BFCyBIQAjALAjAKQglC9ghC9QgPBLgLBLQjQALh2AFQhpADiVgdQhKgGhMgIg");
	this.shape_974.setTransform(496.4,448.2);

	this.shape_975 = new cjs.Shape();
	this.shape_975.graphics.f("#FFFFFF").s().p("AjjFfIiWgOIhHgFIAhg+QAmhJAkhKQBeiSA2irQAnh2A1hAQA9AWA9AZQC1BFCxBIIBGAVQglC9giC9QgOBLgMBLQjPALh3AFIgRAAQhjAAiJgag");
	this.shape_975.setTransform(496.4,448.2);

	this.shape_976 = new cjs.Shape();
	this.shape_976.graphics.f().s("#333333").ss(1,1,1).p("Am+FqIAehCQAkhNAihPQBUiaA1ivQAlh4AxhNQA/AVA+AXQC5BAC1BDQAoALAnALQgbDGgYDGQgMBPgHBPQjJAMiBAJQh0AFiYgTQhLgDhPgEg");
	this.shape_976.setTransform(503.2,455.2);

	this.shape_977 = new cjs.Shape();
	this.shape_977.graphics.f("#FFFFFF").s().p("AjdF0IiagHIhHgDIAehCQAkhNAihPQBUiaA1ivQAlh4AxhNQA/AVA+AXQC5BAC1BDIBPAWQgbDGgYDGQgMBPgHBPIlKAVIgzABQhiAAh3gPg");
	this.shape_977.setTransform(503.2,455.2);

	this.shape_978 = new cjs.Shape();
	this.shape_978.graphics.f().s("#333333").ss(1,1,1).p("Am8GIIAchHQAghRAghTQBMijAzizQAkh5AthaQBAATBBAVQC7A7C6A9QAsAMArALQgRDRgPDOQgHBTgFBTQjBAOiMALQh/AJibgKQhOAAhPgBg");
	this.shape_978.setTransform(510,462.3);

	this.shape_979 = new cjs.Shape();
	this.shape_979.graphics.f("#FFFFFF").s().p("AjWGIIidgBIhJABIAchHIBAikQBMijAzizQAkh5AthaQBAATBBAVQC7A7C6A9IBXAXIggGfQgHBTgFBTIlNAZQg9AEhBAAQhKAAhSgFg");
	this.shape_979.setTransform(510,462.3);

	this.shape_980 = new cjs.Shape();
	this.shape_980.graphics.f().s("#333333").ss(1,1,1).p("Am6GfIAZhKQAehWAdhXQBDisAyi3QAjh7AphoQBBATBCASQC/A3C+A3QAwAMAxANQgIDZgGDYQgDBXgBBWQi7AQiWAOQiLAMidAAQhQAChRADg");
	this.shape_980.setTransform(516.8,470);

	this.shape_981 = new cjs.Shape();
	this.shape_981.graphics.f("#FFFFFF").s().p("AmhFUIA7isQBDirAyi4QAjh7AphoICDAlQC+A3C/A3IBhAYIgPGzQgCBWgBBWIlSAeQiKAMiegBIigAHIhKACg");
	this.shape_981.setTransform(516.8,470);

	this.shape_982 = new cjs.Shape();
	this.shape_982.graphics.f().s("#333333").ss(1,1,1).p("Am9GzIAYhOQAahbAbhbQA6i0Ayi7QAhh+AlhzQBCAQBEARQDBAyDDAyQA1AMA0ANQADDjADDhQABBaACBbQizARiiARQiVAPihAJQhSAHhSAGg");
	this.shape_982.setTransform(524,478.1);

	this.shape_983 = new cjs.Shape();
	this.shape_983.graphics.f("#FFFFFF").s().p("AmlFkIA1i1QA6i0Axi7QAih+Alh0ICGAiIGEBjIBqAaIAFHEIADC0IlVAiQiVAQihAJIikAMIhLAGg");
	this.shape_983.setTransform(524,478.1);

	this.shape_984 = new cjs.Shape();
	this.shape_984.graphics.f().s("#333333").ss(1,1,1).p("AjhnGIKICRIAiKUIuRBog");
	this.shape_984.setTransform(532.1,486.1);

	this.shape_985 = new cjs.Shape();
	this.shape_985.graphics.f("#FFFFFF").s().p("AjhnFIKICRIAiKSIuRBpg");
	this.shape_985.setTransform(532.1,486.1);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[]}).to({state:[{t:this.shape_825},{t:this.shape_824}]},18).to({state:[{t:this.shape_827},{t:this.shape_826}]},1).to({state:[{t:this.shape_829},{t:this.shape_828}]},1).to({state:[{t:this.shape_831},{t:this.shape_830}]},1).to({state:[{t:this.shape_833},{t:this.shape_832}]},1).to({state:[{t:this.shape_835},{t:this.shape_834}]},1).to({state:[{t:this.shape_837},{t:this.shape_836}]},1).to({state:[{t:this.shape_839},{t:this.shape_838}]},1).to({state:[{t:this.shape_841},{t:this.shape_840}]},1).to({state:[{t:this.shape_843},{t:this.shape_842}]},1).to({state:[{t:this.shape_845},{t:this.shape_844}]},1).to({state:[{t:this.shape_847},{t:this.shape_846}]},1).to({state:[{t:this.shape_849},{t:this.shape_848}]},1).to({state:[{t:this.shape_851},{t:this.shape_850}]},1).to({state:[{t:this.shape_853},{t:this.shape_852}]},1).to({state:[{t:this.shape_855},{t:this.shape_854}]},1).to({state:[{t:this.shape_857},{t:this.shape_856}]},1).to({state:[{t:this.shape_859},{t:this.shape_858}]},1).to({state:[{t:this.shape_861},{t:this.shape_860}]},1).to({state:[{t:this.shape_863},{t:this.shape_862}]},1).to({state:[{t:this.shape_865},{t:this.shape_864}]},1).to({state:[{t:this.shape_867},{t:this.shape_866}]},1).to({state:[{t:this.shape_869},{t:this.shape_868}]},1).to({state:[{t:this.shape_871},{t:this.shape_870}]},1).to({state:[{t:this.shape_873},{t:this.shape_872}]},1).to({state:[{t:this.shape_875},{t:this.shape_874}]},1).to({state:[{t:this.shape_877},{t:this.shape_876}]},1).to({state:[{t:this.shape_879},{t:this.shape_878}]},1).to({state:[{t:this.shape_881},{t:this.shape_880}]},1).to({state:[{t:this.shape_883},{t:this.shape_882}]},1).to({state:[{t:this.shape_885},{t:this.shape_884}]},1).to({state:[{t:this.shape_887},{t:this.shape_886}]},1).to({state:[{t:this.shape_889},{t:this.shape_888}]},1).to({state:[{t:this.shape_891},{t:this.shape_890}]},1).to({state:[{t:this.shape_893},{t:this.shape_892}]},1).to({state:[{t:this.shape_895},{t:this.shape_894}]},1).to({state:[{t:this.shape_897},{t:this.shape_896}]},1).to({state:[{t:this.shape_899},{t:this.shape_898}]},1).to({state:[{t:this.shape_901},{t:this.shape_900}]},1).to({state:[{t:this.shape_903},{t:this.shape_902}]},1).to({state:[{t:this.shape_905},{t:this.shape_904}]},1).to({state:[{t:this.shape_907},{t:this.shape_906}]},1).to({state:[{t:this.shape_909},{t:this.shape_908}]},1).to({state:[{t:this.shape_911},{t:this.shape_910}]},1).to({state:[{t:this.shape_913},{t:this.shape_912}]},1).to({state:[{t:this.shape_915},{t:this.shape_914}]},1).to({state:[{t:this.shape_917},{t:this.shape_916}]},1).to({state:[{t:this.shape_919},{t:this.shape_918}]},1).to({state:[{t:this.shape_921},{t:this.shape_920}]},1).to({state:[{t:this.shape_923},{t:this.shape_922}]},1).to({state:[{t:this.shape_925},{t:this.shape_924}]},1).to({state:[{t:this.shape_927},{t:this.shape_926}]},1).to({state:[{t:this.shape_929},{t:this.shape_928}]},1).to({state:[{t:this.shape_931},{t:this.shape_930}]},1).to({state:[{t:this.shape_933},{t:this.shape_932}]},1).to({state:[{t:this.shape_935},{t:this.shape_934}]},1).to({state:[{t:this.shape_937},{t:this.shape_936}]},1).to({state:[{t:this.shape_939},{t:this.shape_938}]},1).to({state:[{t:this.shape_941},{t:this.shape_940}]},1).to({state:[{t:this.shape_943},{t:this.shape_942}]},1).to({state:[{t:this.shape_945},{t:this.shape_944}]},1).to({state:[{t:this.shape_947},{t:this.shape_946}]},1).to({state:[{t:this.shape_949},{t:this.shape_948}]},1).to({state:[{t:this.shape_951},{t:this.shape_950}]},1).to({state:[{t:this.shape_953},{t:this.shape_952}]},1).to({state:[{t:this.shape_955},{t:this.shape_954}]},1).to({state:[{t:this.shape_957},{t:this.shape_956}]},1).to({state:[{t:this.shape_959},{t:this.shape_958}]},1).to({state:[{t:this.shape_961},{t:this.shape_960}]},1).to({state:[{t:this.shape_963},{t:this.shape_962}]},1).to({state:[{t:this.shape_965},{t:this.shape_964}]},1).to({state:[{t:this.shape_967},{t:this.shape_966}]},1).to({state:[{t:this.shape_969},{t:this.shape_968}]},1).to({state:[{t:this.shape_971},{t:this.shape_970}]},1).to({state:[{t:this.shape_973},{t:this.shape_972}]},1).to({state:[{t:this.shape_975},{t:this.shape_974}]},1).to({state:[{t:this.shape_977},{t:this.shape_976}]},1).to({state:[{t:this.shape_979},{t:this.shape_978}]},1).to({state:[{t:this.shape_981},{t:this.shape_980}]},1).to({state:[{t:this.shape_983},{t:this.shape_982}]},1).to({state:[{t:this.shape_985},{t:this.shape_984}]},1).to({state:[]},1).wait(27));

	// 纸
	this.shape_986 = new cjs.Shape();
	this.shape_986.graphics.f().s("#333333").ss(1,1,1).p("Ao0hNIRpAyIAABpIurgyg");
	this.shape_986.setTransform(83.5,483);

	this.shape_987 = new cjs.Shape();
	this.shape_987.graphics.f("#FFFFFF").s().p("Al2AcIi+hpIRpAyIAABpg");
	this.shape_987.setTransform(83.5,483);

	this.shape_988 = new cjs.Shape();
	this.shape_988.graphics.f().s("#333333").ss(1,1,1).p("AothYII4AGIA5AJQBHAKBIAJQCnAYCuARQADAyADAzQiSAFjEgQQiTgJiUgLIiUgLIiSgUg");
	this.shape_988.setTransform(96.7,474.3);

	this.shape_989 = new cjs.Shape();
	this.shape_989.graphics.f("#FFFFFF").s().p("ADYBNQiTgJiUgLIiUgLIiSgUIi4hyII4AGIA5AJICPATQCnAYCuARIAGBlIhMABQh3AAiTgMg");
	this.shape_989.setTransform(96.7,474.3);

	this.shape_990 = new cjs.Shape();
	this.shape_990.graphics.f().s("#333333").ss(1,1,1).p("AonhiII+gLIA1ANQBBARBEAQQCeAmCsAaQAGAzAHAyQh2ASjZgXQiTgMiYgOIiWgOIiNgfg");
	this.shape_990.setTransform(109.9,465.4);

	this.shape_991 = new cjs.Shape();
	this.shape_991.graphics.f("#FFFFFF").s().p("ADZBhQiTgMiYgOIiWgOIiNgfIiyh8II+gLIA1ANICFAhQCeAmCsAaQAGAzAHAyQgzAIhGAAQhbAAh7gNg");
	this.shape_991.setTransform(109.9,465.4);

	this.shape_992 = new cjs.Shape();
	this.shape_992.graphics.f().s("#333333").ss(1,1,1).p("AohhoIJEgeIAxATQA8AXBAAWQCVA3CpAjQAJAzALAxQhZAejvgeQiTgNicgSIiXgRIiIgqg");
	this.shape_992.setTransform(123,456.1);

	this.shape_993 = new cjs.Shape();
	this.shape_993.graphics.f("#FFFFFF").s().p("ADaB4QiTgNicgSIiXgRIiIgqIitiGIJEgeIAxATQA8AXBAAWQCVA3CpAjQAJAzALAxQgtAPhSAAQhSAAh3gPg");
	this.shape_993.setTransform(123,456.1);

	this.shape_994 = new cjs.Shape();
	this.shape_994.graphics.f().s("#333333").ss(1,1,1).p("AobhvIJKgwIAsAYQA3AeA8AdQCMBGCnAtQAMAyAPAwQg9AqkEglQiTgOiggWIiZgTIiCg2g");
	this.shape_994.setTransform(136.2,446.9);

	this.shape_995 = new cjs.Shape();
	this.shape_995.graphics.f("#FFFFFF").s().p("ADbCOQiTgOiggWIiZgTIiCg2IioiQIJKgwIAsAYQA3AeA8AdQCMBGCnAtQAMAyAPAwQggAXhZAAQhPAAh5gSg");
	this.shape_995.setTransform(136.2,446.9);

	this.shape_996 = new cjs.Shape();
	this.shape_996.graphics.f().s("#333333").ss(1,1,1).p("AoVh1IJQhCIAoAdQAxAkA4AjQCDBTClA6QAPAyATAvQghA1kZgrQiTgRikgYIibgXIh9hBg");
	this.shape_996.setTransform(149.4,437.7);

	this.shape_997 = new cjs.Shape();
	this.shape_997.graphics.f("#FFFFFF").s().p("ADcClQiTgRikgYIibgXIh9hBIiiiZIJQhCIAoAdQAxAkA4AjQCDBTClA6QAPAyATAvQgSAdheAAQhMAAh+gTg");
	this.shape_997.setTransform(149.4,437.7);

	this.shape_998 = new cjs.Shape();
	this.shape_998.graphics.f().s("#333333").ss(1,1,1).p("AoPh8IJXhUIAjAiQArArA1ApQB6BjCiBEQASAxAXAuQgFBCkugyQiTgTiogcIidgZIh3hNg");
	this.shape_998.setTransform(162.6,428.5);

	this.shape_999 = new cjs.Shape();
	this.shape_999.graphics.f("#FFFFFF").s().p("ADdC8QiUgTingcIidgZIh4hNIicijIJXhUIAjAiQArArA0ApQB6BjCjBEQATAxAWAuQgDAlhiAAQhLAAiDgVg");
	this.shape_999.setTransform(162.6,428.5);

	this.shape_1000 = new cjs.Shape();
	this.shape_1000.graphics.f().s("#333333").ss(1,1,1).p("AoKiDIJdhmIAeAnQAnAxAwAwQBxBzCgBOQAWAwAaAtQAYBOlEg5QiTgUisggIiegcIhzhYg");
	this.shape_1000.setTransform(175.9,419.4);

	this.shape_1001 = new cjs.Shape();
	this.shape_1001.graphics.f("#FFFFFF").s().p("ADdDSQiTgUisggIiegcIhzhYIiXitIJdhmIAeAnQAnAxAwAwQBxBzCgBOQAWAwAaAtQAOAthmAAQhLAAiJgYg");
	this.shape_1001.setTransform(175.9,419.4);

	this.shape_1002 = new cjs.Shape();
	this.shape_1002.graphics.f().s("#333333").ss(1,1,1).p("AoGiKIJjh4IAZAsQAiA4AsA2QBoCCCeBYQAZAwAeAsQA0BalZhAQiUgWivgjIiggfIhuhjg");
	this.shape_1002.setTransform(189.3,410.2);

	this.shape_1003 = new cjs.Shape();
	this.shape_1003.graphics.f("#FFFFFF").s().p("ADcDoQiUgWivgjIiggfIhuhjIiRi3IJjh4IAZAsQAiA4AsA2QBoCCCeBYQAZAwAeAsQAeA1hpAAQhLAAiPgbg");
	this.shape_1003.setTransform(189.3,410.2);

	this.shape_1004 = new cjs.Shape();
	this.shape_1004.graphics.f().s("#333333").ss(1,1,1).p("AoEiQIJpiLIAVAyQAcA+AoA8QBfCSCcBiQAcAwAhArQBRBmluhHQiUgYizgmIiigjIhohug");
	this.shape_1004.setTransform(202.9,401);

	this.shape_1005 = new cjs.Shape();
	this.shape_1005.graphics.f("#FFFFFF").s().p("ADZD/QiUgYizgmIiigjIhohuIiMjAIJpiLIAVAyQAcA+AoA8QBfCSCcBiQAcAwAhArQAwA8hsAAQhLAAiWgdg");
	this.shape_1005.setTransform(202.9,401);

	this.shape_1006 = new cjs.Shape();
	this.shape_1006.graphics.f().s("#333333").ss(1,1,1).p("AoDiXIJwidIAQA3QAXBFAkBCQBWCiCZBsQAfAvAmAqQBsBymDhNQiUgai3gqIikglIhjh6g");
	this.shape_1006.setTransform(216.5,391.8);

	this.shape_1007 = new cjs.Shape();
	this.shape_1007.graphics.f("#FFFFFF").s().p("ADVEWQiUgai3gqIikglIhjh6IiGjKIJwidIAQA3QAXBFAkBCQBWCiCZBsQAfAvAmAqQBABEhvAAQhLAAidgfg");
	this.shape_1007.setTransform(216.5,391.8);

	this.shape_1008 = new cjs.Shape();
	this.shape_1008.graphics.f().s("#333333").ss(1,1,1).p("AoCidIJ2iwIALA9QASBLAgBJQBNCxCXB2QAiAvAqApQCIB9mYhUQiUgbi7gtIimgpIhdiFg");
	this.shape_1008.setTransform(230.2,382.6);

	this.shape_1009 = new cjs.Shape();
	this.shape_1009.graphics.f("#FFFFFF").s().p("ADREsQiUgbi7gtIimgpIhdiFIiBjTIJ2iwIALA9QASBLAgBJQBNCxCXB2QAiAvAqApQBRBLhxAAQhMAAikgig");
	this.shape_1009.setTransform(230.2,382.6);

	this.shape_1010 = new cjs.Shape();
	this.shape_1010.graphics.f().s("#333333").ss(1,1,1).p("AoCikIJ8jCIAHBCQAMBRAdBQQBEDBCUCAQAmAuAtAoQClCKmuhbQiUgdi/gxIingrIhYiRg");
	this.shape_1010.setTransform(244,373.4);

	this.shape_1011 = new cjs.Shape();
	this.shape_1011.graphics.f("#FFFFFF").s().p("ADMFDQiUgdi/gxIingrIhYiRIh8jdIJ8jCIAHBCQAMBRAdBQQBEDBCUCAQAmAuAtAoQBjBTh0AAQhNAAirgkg");
	this.shape_1011.setTransform(244,373.4);

	this.shape_1012 = new cjs.Shape();
	this.shape_1012.graphics.f().s("#333333").ss(1,1,1).p("AoCirIKCjUIADBHQAHBYAYBWQA7DQCSCKQApAuAxAnQDBCWnDhiQiUgfjDg0Iipgug");
	this.shape_1012.setTransform(257.8,364.2);

	this.shape_1013 = new cjs.Shape();
	this.shape_1013.graphics.f("#FFFFFF").s().p("ADHFZQiUgfjDg0IipguIjJmDIKCjUIADBHQAHBYAYBWQA7DQCSCKQApAuAxAnQB1Bbh3AAQhOAAiygng");
	this.shape_1013.setTransform(257.8,364.2);

	this.shape_1014 = new cjs.Shape();
	this.shape_1014.graphics.f().s("#333333").ss(1,1,1).p("AoDiyIKIjmIgCBMQACBfAUBcQBBElDhCiQDhCjnbhpQiUghjHg4Iirgxg");
	this.shape_1014.setTransform(271.7,355);

	this.shape_1015 = new cjs.Shape();
	this.shape_1015.graphics.f("#FFFFFF").s().p("ADBFwQiUghjHg4IirgxIi+mYIKIjmIgCBMQACBfAUBcQBBElDhCiQCJBjh6AAQhOAAi7gpg");
	this.shape_1015.setTransform(271.7,355);

	this.shape_1016 = new cjs.Shape();
	this.shape_1016.graphics.f().s("#333333").ss(1,1,1).p("An8iyIGIiMQCAgvB+gtQABAkgCAmQACBjASBXQAlCqBbCCQBABbBaBEQCIBliAABQhRgCivgmQh6gZiagpQgigKgjgLIing1g");
	this.shape_1016.setTransform(276.7,356);

	this.shape_1017 = new cjs.Shape();
	this.shape_1017.graphics.f("#FFFFFF").s().p("AC/FzQh6gZiagpIhFgVIing1Ii7mZIGIiMID+hcQABAkgCAmQACBjASBXQAlCqBbCCQBABbBaBEQCIBliAABQhRgCivgmg");
	this.shape_1017.setTransform(276.7,356);

	this.shape_1018 = new cjs.Shape();
	this.shape_1018.graphics.f().s("#333333").ss(1,1,1).p("An1ixIGGiPQCBgwB8gsQAEAigDAmQgBBhASBZQAjCoBZCFQA+BbBXBGQCEBlh5AEQhTgCitgkQh7gYiZgmQghgMgigMIiig6g");
	this.shape_1018.setTransform(281.8,357);

	this.shape_1019 = new cjs.Shape();
	this.shape_1019.graphics.f("#FFFFFF").s().p("AC8F3Qh7gZiZgmIhDgXIiig6Ii4mYIGGiPQCBgwB8grQAEAhgDAmQgBBhASBZQAjCoBZCFQA+BbBXBGQCEBlh5AEQhTgCitgkg");
	this.shape_1019.setTransform(281.8,357);

	this.shape_1020 = new cjs.Shape();
	this.shape_1020.graphics.f().s("#333333").ss(1,1,1).p("AnuixIGFiQQCCgyB6gqQAGAfgEAmQgCBfAQBbQAiCmBXCIQA8BcBVBHQB/Bkh0AHQhUgBirgiQh7gXiZglQgfgMgigNIidg+g");
	this.shape_1020.setTransform(286.9,358);

	this.shape_1021 = new cjs.Shape();
	this.shape_1021.graphics.f("#FFFFFF").s().p("AC5F7Qh7gXiZglIhBgZIidg+Ii1mZIGFiQQCCgyB6gqQAGAfgEAmQgCBfAQBbQAiCmBXCIQA8BcBVBHQB/Bkh0AHQhUgBirgig");
	this.shape_1021.setTransform(286.9,358);

	this.shape_1022 = new cjs.Shape();
	this.shape_1022.graphics.f().s("#333333").ss(1,1,1).p("AnoixIGEiSQCEgyB3gqQAJAdgFAmQgEBeAQBbQAgClBUCLQA7BcBSBJQB7BkhuAKQhWAAioghQh8gWiYgjQgfgNgggNIiZhDg");
	this.shape_1022.setTransform(291.9,358.9);

	this.shape_1023 = new cjs.Shape();
	this.shape_1023.graphics.f("#FFFFFF").s().p("AC3F/Qh8gWiYgjIg/gaIiZhDIizmaIGEiSQCEgyB3gqQAJAdgFAmQgEBeAQBbQAgClBUCLQA7BcBSBJQB7BkhuAKQhWAAioghg");
	this.shape_1023.setTransform(291.9,358.9);

	this.shape_1024 = new cjs.Shape();
	this.shape_1024.graphics.f().s("#333333").ss(1,1,1).p("AnhiwIGDiUQCFg0B1gpQAMAbgGAmQgHBdAPBcQAfClBSCMQA5BdBPBKQB3BkhpANQhXAAimgfQh8gViXghQgegOgggOIiUhHg");
	this.shape_1024.setTransform(297,359.9);

	this.shape_1025 = new cjs.Shape();
	this.shape_1025.graphics.f("#FFFFFF").s().p("AC0GDQh8gViXghIg+gcIiUhHIiwmbIGDiTQCFg0B1gpQAMAbgGAmQgHBdAPBcQAfClBSCMQA5BdBPBKQB3BjhpAOQhXgBimgeg");
	this.shape_1025.setTransform(297,359.9);

	this.shape_1026 = new cjs.Shape();
	this.shape_1026.graphics.f().s("#333333").ss(1,1,1).p("AnaiwIGBiWQCGg1BzgoQAOAZgHAmQgIBbAOBeQAdCjBQCPQA3BeBNBLQByBjhiARQhZAAikgeQh9gTiWgfQgdgPgfgPIiPhLg");
	this.shape_1026.setTransform(302.1,360.9);

	this.shape_1027 = new cjs.Shape();
	this.shape_1027.graphics.f("#FFFFFF").s().p("ACxGGQh9gTiWgfIg8geIiPhLIitmbIGBiWQCGg1BzgoQAOAZgHAmQgIBbAOBeQAdCjBQCPQA3BeBNBLQByBjhiARQhZAAikgeg");
	this.shape_1027.setTransform(302.1,360.9);

	this.shape_1028 = new cjs.Shape();
	this.shape_1028.graphics.f().s("#333333").ss(1,1,1).p("AnUiwIGAiXQCIg3BwgnQARAXgIAmQgKBZANBfQAbChBPCSQA1BfBKBMQBuBjhdAUQhaABiigcQh+gSiVgdQgcgQgegRIiKhPg");
	this.shape_1028.setTransform(307.2,361.9);

	this.shape_1029 = new cjs.Shape();
	this.shape_1029.graphics.f("#FFFFFF").s().p("ACuGKQh+gSiVgdIg6ghIiKhPIirmbIGAiXQCIg3BwgnQARAXgIAmQgKBZANBfQAbChBPCSQA1BfBKBMQBuBkhdATIgDABQhaAAifgcg");
	this.shape_1029.setTransform(307.2,361.9);

	this.shape_1030 = new cjs.Shape();
	this.shape_1030.graphics.f().s("#333333").ss(1,1,1).p("AnNiwIF/iZQCJg3BugmQATAUgJAmQgMBXAMBhQAaCgBMCUQA0BgBHBNQBpBjhXAXQhbABiggaQh+gRiVgbQgbgRgcgRIiGhUg");
	this.shape_1030.setTransform(312.2,362.8);

	this.shape_1031 = new cjs.Shape();
	this.shape_1031.graphics.f("#FFFFFF").s().p("ACrGOQh+gRiVgbIg3giIiGhUIiomcIF/iZQCJg3BugmQATAUgJAmQgMBXAMBhQAaCgBMCUQA0BgBHBNQBpBjhXAXIgDAAQhbAAidgZg");
	this.shape_1031.setTransform(312.2,362.8);

	this.shape_1032 = new cjs.Shape();
	this.shape_1032.graphics.f().s("#333333").ss(1,1,1).p("AnGiwIF9iaQCKg5BsglQAWASgKAmQgOBVALBjQAZCdBJCYQAyBgBFBPQBlBihRAbQhdABiegYQh/gQiUgZQgagSgbgSIiBhYg");
	this.shape_1032.setTransform(317.3,363.8);

	this.shape_1033 = new cjs.Shape();
	this.shape_1033.graphics.f("#FFFFFF").s().p("ACoGSQh/gQiUgZIg1gkIiBhYIilmdIF9iaQCKg5BsglQAWASgKAmQgOBVALBjQAZCdBJCYQAyBgBFBPQBlBihRAbIgIAAQhbAAiYgXg");
	this.shape_1033.setTransform(317.3,363.8);

	this.shape_1034 = new cjs.Shape();
	this.shape_1034.graphics.f().s("#333333").ss(1,1,1).p("Am/ivIF8idQCLg6BqgkQAYAQgLAmQgQBUALBkQAXCbBHCbQAwBhBDBQQBgBihMAeQheABibgWQiAgPiTgXQgZgTgbgTIh8hcg");
	this.shape_1034.setTransform(322.4,364.8);

	this.shape_1035 = new cjs.Shape();
	this.shape_1035.graphics.f("#FFFFFF").s().p("ACmGWQiAgPiTgXIg0gmIh8hcIiimdIF8idQCLg6BqgkQAYAQgLAmQgQBUALBkQAXCbBHCbQAwBhBDBQQBgBihMAeIgMAAQhcAAiRgVg");
	this.shape_1035.setTransform(322.4,364.8);

	this.shape_1036 = new cjs.Shape();
	this.shape_1036.graphics.f().s("#333333").ss(1,1,1).p("Am5ivIF8ieQCMg7BngkQAbAOgMAmQgRBTAJBkQAWCbBFCdQAuBiBABRQBbBhhFAiQhgABiZgUQiAgNiTgWQgYgUgZgUIh4hgg");
	this.shape_1036.setTransform(327.4,365.7);

	this.shape_1037 = new cjs.Shape();
	this.shape_1037.graphics.f("#FFFFFF").s().p("ACjGaQiAgNiTgWIgxgoIh4hgIigmeIF8ieQCMg7BngkQAbAOgMAmQgRBTAJBkQAWCbBFCdQAuBiBABRQBbBhhFAiIgOAAQhcAAiPgTg");
	this.shape_1037.setTransform(327.4,365.7);

	this.shape_1038 = new cjs.Shape();
	this.shape_1038.graphics.f().s("#333333").ss(1,1,1).p("AmyivIF6igQCNg8BlgjQAeAMgNAmQgUBRAJBmQAUCYBDChQAsBiA+BTQBXBhhAAkQhhACiXgTQiBgLiSgUQgXgVgYgVIhzhlg");
	this.shape_1038.setTransform(332.5,366.7);

	this.shape_1039 = new cjs.Shape();
	this.shape_1039.graphics.f("#FFFFFF").s().p("ACgGdQiBgLiSgUIgvgqIhzhlIidmeIF6igQCNg8BlgjQAeAMgNAmQgUBRAJBmQAUCYBDChQAsBiA+BTQBXBhhAAkIgTABQhcAAiJgSg");
	this.shape_1039.setTransform(332.5,366.7);

	this.shape_1040 = new cjs.Shape();
	this.shape_1040.graphics.f().s("#333333").ss(1,1,1).p("AmriuIF4iiQCPg+BjghQAgAJgOAmQgVBPAIBoQASCWBBCkQAqBjA7BUQBTBgg6AoQhjADiUgSQiCgKiRgSQgWgWgYgWIhuhpg");
	this.shape_1040.setTransform(337.6,367.7);

	this.shape_1041 = new cjs.Shape();
	this.shape_1041.graphics.f("#FFFFFF").s().p("ACeGhQiCgKiRgSIgugsIhuhpIiameIF4iiQCPg+BjghQAgAJgOAmQgVBPAIBoQASCWBBCkQAqBjA7BUQBTBgg6AoIgaAAQhcAAiBgPg");
	this.shape_1041.setTransform(337.6,367.7);

	this.shape_1042 = new cjs.Shape();
	this.shape_1042.graphics.f().s("#333333").ss(1,1,1).p("AmliuIF4ikQCPg+BhghQAjAHgPAmQgYBNAIBpQAQCVA/CnQApBjA4BWQBOBgg0ArQhkACiTgPQiBgJiRgRQgWgWgWgXIhqhug");
	this.shape_1042.setTransform(342.7,368.7);

	this.shape_1043 = new cjs.Shape();
	this.shape_1043.graphics.f("#FFFFFF").s().p("ACaGlQiBgJiRgRIgsgtIhqhuIiXmeIF4ikQCPg+BhghQAjAHgPAmQgYBNAIBpQAQCVA/CnQApBjA4BWQBOBgg0ArIgYAAQhdAAiCgNg");
	this.shape_1043.setTransform(342.7,368.7);

	this.shape_1044 = new cjs.Shape();
	this.shape_1044.graphics.f().s("#333333").ss(1,1,1).p("AmeiuIF2ilQCRhABeggQAlAFgQAmQgZBLAHBrQAPCTA8CpQAnBkA2BXQBJBgguAvQhlACiRgOQiCgIiQgOQgVgXgVgYIhlhyg");
	this.shape_1044.setTransform(347.8,369.7);

	this.shape_1045 = new cjs.Shape();
	this.shape_1045.graphics.f("#FFFFFF").s().p("ACXGoQiCgIiQgOIgqgvIhlhyIiUmfIF2ilQCRhABeggQAlAFgQAmQgZBLAHBrQAPCTA8CpQAnBkA2BXQBJBgguAvIggAAQhbAAh7gMg");
	this.shape_1045.setTransform(347.8,369.7);

	this.shape_1046 = new cjs.Shape();
	this.shape_1046.graphics.f().s("#333333").ss(1,1,1).p("AmXiuIF0inQCThBBcgfQAnADgRAmQgbBJAGBsQANCRA7CtQAlBkAzBZQBFBfgoAyQhnADiOgMQiDgHiPgMQgUgZgVgYIhgh3g");
	this.shape_1046.setTransform(352.8,370.7);

	this.shape_1047 = new cjs.Shape();
	this.shape_1047.graphics.f("#FFFFFF").s().p("ACVGsQiDgHiPgMIgpgxIhgh3IiRmfIF0inQCThBBcgfQAnADgRAmQgbBJAGBsQANCRA7CtQAlBkAzBZQBFBfgoAyIgqABQhZAAhygKg");
	this.shape_1047.setTransform(352.8,370.7);

	this.shape_1048 = new cjs.Shape();
	this.shape_1048.graphics.f().s("#333333").ss(1,1,1).p("AmRiuIF0ioQCThDBageQAqABgSAmQgdBIAFBtQAMCQA4CvQAjBlAxBaQBABfgiA1QhoADiMgKQiEgFiOgLQgTgZgUgaIhbh7g");
	this.shape_1048.setTransform(357.9,371.6);

	this.shape_1049 = new cjs.Shape();
	this.shape_1049.graphics.f("#FFFFFF").s().p("ACSGwQiEgFiOgLIgngzIhbh7IiPmgIF0ioQCThDBageQAqABgSAmQgdBIAFBtQAMCQA4CvQAjBlAxBaQBABfgiA1IgwABQhXAAhtgIg");
	this.shape_1049.setTransform(357.9,371.6);

	this.shape_1050 = new cjs.Shape();
	this.shape_1050.graphics.f().s("#333333").ss(1,1,1).p("AmKitIFyirQCVhDBYgeQAsgBgTAmQgeBHAEBuQAKCOA2CyQAhBmAuBbQA8BegdA5QhpAEiKgJQiEgEiOgJQgSgagSgbIhXh/g");
	this.shape_1050.setTransform(363,372.6);

	this.shape_1051 = new cjs.Shape();
	this.shape_1051.graphics.f("#FFFFFF").s().p("ACPG0QiEgEiOgJIgkg1IhXh/IiMmgIFyirQCVhDBYgeQAsgBgTAmQgeBHAEBuQAKCOA2CyQAhBmAuBbQA8BegdA5Ig9ABQhTAAhjgGg");
	this.shape_1051.setTransform(363,372.6);

	this.shape_1052 = new cjs.Shape();
	this.shape_1052.graphics.f().s("#333333").ss(1,1,1).p("AmEitIFxisQCWhFBVgdQAvgDgUAmQggBFADBvQAJCMAzC2QAgBmAsBdQA3BegXA8QhrAEiHgIQiFgCiNgHQgRgcgSgbIhSiDg");
	this.shape_1052.setTransform(368.1,373.6);

	this.shape_1053 = new cjs.Shape();
	this.shape_1053.graphics.f("#FFFFFF").s().p("ACMG3QiFgCiNgHIgjg3IhSiDIiJmhIFxisQCWhFBVgdQAvgDgUAmQggBFADBvQAJCMAzC2QAgBmAsBdQA3BegXA8IhOABQhMAAhYgFg");
	this.shape_1053.setTransform(368.1,373.6);

	this.shape_1054 = new cjs.Shape();
	this.shape_1054.graphics.f().s("#333333").ss(1,1,1).p("Al+itIFwiuQCXhGBTgbQAygGgVAmQgiBDACBxQAHCLAxC4QAfBnAoBeQAzBdgRBAQhsAEiFgGQiGgBiMgFQgQgcgRgcIhNiIg");
	this.shape_1054.setTransform(373.2,374.5);

	this.shape_1055 = new cjs.Shape();
	this.shape_1055.graphics.f("#FFFFFF").s().p("ACJG7QiGgBiMgFIghg4IhNiIIiHmiIFwiuQCXhGBTgbQAygGgVAmQgiBDACBxQAHCLAxC4QAfBnAoBeQAzBdgRBAQgtABgyAAQhFAAhNgDg");
	this.shape_1055.setTransform(373.2,374.5);

	this.shape_1056 = new cjs.Shape();
	this.shape_1056.graphics.f().s("#333333").ss(1,1,1).p("Al3itIFuivQCZhIBQgaQA1gIgWAmQglBBACBzQAFCIAwC7QAcBoAmBfQAvBegMBCQhtAFiDgEQiGAAiMgEQgPgdgQgdIhJiMg");
	this.shape_1056.setTransform(378.3,375.5);

	this.shape_1057 = new cjs.Shape();
	this.shape_1057.graphics.f("#FFFFFF").s().p("ACGG/QiGAAiMgEIgfg6IhJiMIiDmiIFuivQCZhIBQgaQA1gIgWAmQglBBACBzQAFCIAwC7QAcBoAmBfQAvBegMBCQg9ADhFAAIhugCg");
	this.shape_1057.setTransform(378.3,375.5);

	this.shape_1058 = new cjs.Shape();
	this.shape_1058.graphics.f().s("#333333").ss(1,1,1).p("AlyitIFtixQCahJBPgZQA2gKgXAmQgmA/ABB0QAECHAtC+QAbBpAjBgQAqBdgFBGQhvAFiBgCQiFABiNgCQgOgegPgeIhEiQg");
	this.shape_1058.setTransform(383.5,376.5);

	this.shape_1059 = new cjs.Shape();
	this.shape_1059.graphics.f("#FFFFFF").s().p("ACCHDQiFABiNgCIgdg8IhEiQIiBmjIFtixQCahJBPgZQA2gKgXAmQgmA/ABB0QAECHAtC+QAbBpAjBgQAqBdgFBGQhPADhZAAIhIAAg");
	this.shape_1059.setTransform(383.5,376.5);

	this.shape_1060 = new cjs.Shape();
	this.shape_1060.graphics.f().s("#333333").ss(1,1,1).p("AlsiuIFsizQCbhKBMgYQA6gNgYAmQgoA+gBB2QACCFAsDAQAZBqAgBiQAmBcAABJQhwAFh/AAQiFACiMABQgOgfgNgfIhAiVg");
	this.shape_1060.setTransform(388.7,377.6);

	this.shape_1061 = new cjs.Shape();
	this.shape_1061.graphics.f("#FFFFFF").s().p("AivGKIg/iVIh+mjIFsizQCbhKBMgYQA5gNgYAmQgoA+AAB2QACCFAsDAQAYBqAhBiQAmBcAABJQhwAFh/AAQiFACiNABIgbg+g");
	this.shape_1061.setTransform(388.7,377.6);

	this.shape_1062 = new cjs.Shape();
	this.shape_1062.graphics.f().s("#333333").ss(1,1,1).p("AlniwIFpi1QCfhLBJgYQA8gOgZAmQgqA9gBB2QABCDApDEQAXBqAeBjQAhBcAGBNQhxAFh9ACQiGADiLACQgNgfgMggIg7iZg");
	this.shape_1062.setTransform(393.9,378.8);

	this.shape_1063 = new cjs.Shape();
	this.shape_1063.graphics.f("#FFFFFF").s().p("AiwGNIg8iZIh7mkIFpi1QCfhLBJgYQA8gOgZAmQgqA9gBB2QABCDAoDEQAYBqAeBjQAhBcAGBNQhyAFh9ACQiFADiLACIgZg/g");
	this.shape_1063.setTransform(393.9,378.8);

	this.shape_1064 = new cjs.Shape();
	this.shape_1064.graphics.f().s("#333333").ss(1,1,1).p("AliixIFoi3QCfhMBIgXQA+gRgaAmQgrA7gCB4QgBCBAmDHQAWBrAcBkQAcBcAMBQQhzAGh7ADQiGAFiLADQgLgggMghIg2idg");
	this.shape_1064.setTransform(399.1,380);

	this.shape_1065 = new cjs.Shape();
	this.shape_1065.graphics.f("#FFFFFF").s().p("AizGQIg2idIh5mkIFoi3QCfhMBIgXQA+gRgaAmQgrA7gCB4QgBCBAmDHQAWBrAcBkQAcBcAMBQQhzAGh7ADQiGAFiLADIgXhBg");
	this.shape_1065.setTransform(399.1,380);

	this.shape_1066 = new cjs.Shape();
	this.shape_1066.graphics.f().s("#333333").ss(1,1,1).p("AldizIFni5QCghNBGgWQBBgTgbAmQguA5gDB5QgCCAAkDKQAUBrAZBmQAYBbASBTQh1AGh4AFQiHAGiKAGQgLghgKgiIgyiig");
	this.shape_1066.setTransform(404.4,381.2);

	this.shape_1067 = new cjs.Shape();
	this.shape_1067.graphics.f("#FFFFFF").s().p("Ai1GTIgyiiIh2mkIFni5QCghNBGgWQBBgTgbAmQguA5gDB5QgCCAAkDKQAUBrAZBmQAYBbASBTIjtALIkRAMIgVhDg");
	this.shape_1067.setTransform(404.4,381.2);

	this.shape_1068 = new cjs.Shape();
	this.shape_1068.graphics.f().s("#333333").ss(1,1,1).p("AlYi1IFli6QFXinhRBdQhSBeBEGWQAiDLAyC5In+Acg");
	this.shape_1068.setTransform(409.6,382.3);

	this.shape_1069 = new cjs.Shape();
	this.shape_1069.graphics.f("#FFFFFF").s().p("AlXi1IFli6QFWinhRBdQhRBeBDGWQAiDLAxC5In8Acg");
	this.shape_1069.setTransform(409.6,382.3);

	this.shape_1070 = new cjs.Shape();
	this.shape_1070.graphics.f().s("#333333").ss(1,1,1).p("AlbimIFejCQDzh7AaALQAJAGgVAZQhIBcBKGMQAGAiAHAgQAfCoAqCbIlLAdIipAJg");
	this.shape_1070.setTransform(410.1,388);

	this.shape_1071 = new cjs.Shape();
	this.shape_1071.graphics.f("#FFFFFF").s().p("AlbimIFejCQDzh7AaALQAJAGgVAZQhIBcBKGMIANBCQAfCoAqCbIlLAdIipAJg");
	this.shape_1071.setTransform(410.1,388);

	this.shape_1072 = new cjs.Shape();
	this.shape_1072.graphics.f().s("#333333").ss(1,1,1).p("AleiXIFZjJQDsh+AZAGQAKAGgUAYQg/BbBPGDQAIAhAHAgQAgCpAqCcIlAAmIiqAJg");
	this.shape_1072.setTransform(410.7,393.6);

	this.shape_1073 = new cjs.Shape();
	this.shape_1073.graphics.f("#FFFFFF").s().p("AleiXIFYjJQDth+AZAGQAKAGgVAYQg+BbBPGDIAPBBQAgCpAqCcIlBAmIipAJg");
	this.shape_1073.setTransform(410.7,393.6);

	this.shape_1074 = new cjs.Shape();
	this.shape_1074.graphics.f().s("#333333").ss(1,1,1).p("AliiHIFTjRQDmh/AaAAQAKAGgUAYQg1BZBVF6QAIAgAJAfQAgCpArCeIk2AvIiqAJIjkpfg");
	this.shape_1074.setTransform(411.2,399.1);

	this.shape_1075 = new cjs.Shape();
	this.shape_1075.graphics.f("#FFFFFF").s().p("AlhiHIAAAAIFRjRQDniAAZABQALAFgUAZQg1BYBVF7IARA/QAgCpArCdIk2AwIirAJg");
	this.shape_1075.setTransform(411.2,399.1);

	this.shape_1076 = new cjs.Shape();
	this.shape_1076.graphics.f().s("#333333").ss(1,1,1).p("Allh4IFLjZQDhiBAagEQAKAFgSAYQgsBXBbFxQAJAfAJAfQAhCqArCeIkrA5IirAJg");
	this.shape_1076.setTransform(411.7,404.7);

	this.shape_1077 = new cjs.Shape();
	this.shape_1077.graphics.f("#FFFFFF").s().p("Allh4IFLjZQDhiBAagEQAKAFgSAYQgsBXBbFxIASA+QAhCqArCeIkrA5IirAJg");
	this.shape_1077.setTransform(411.7,404.7);

	this.shape_1078 = new cjs.Shape();
	this.shape_1078.graphics.f().s("#333333").ss(1,1,1).p("AlohpIFDjgQDciDAagJQAKAFgRAXQgjBWBhFnQAKAfAKAeQAiCrArCfIkgBDIitAIg");
	this.shape_1078.setTransform(412.2,410.3);

	this.shape_1079 = new cjs.Shape();
	this.shape_1079.graphics.f("#FFFFFF").s().p("AlohpIFEjgQDbiDAagJQALAFgSAXQgjBWBhFnIAVA9QAhCrArCfIkgBDIisAIg");
	this.shape_1079.setTransform(412.2,410.3);

	this.shape_1080 = new cjs.Shape();
	this.shape_1080.graphics.f().s("#333333").ss(1,1,1).p("AlrhZIE8joQDXiFAZgPQAMAGgRAWQgZBUBmFgQALAcALAdQAiCtArCgIkVBMIiuAJg");
	this.shape_1080.setTransform(412.7,415.9);

	this.shape_1081 = new cjs.Shape();
	this.shape_1081.graphics.f("#FFFFFF").s().p("AlrhZIE8joIDwiUQALAGgQAWQgZBUBmFhIAWA4QAiCsArChIkVBMIitAJg");
	this.shape_1081.setTransform(412.7,415.9);

	this.shape_1082 = new cjs.Shape();
	this.shape_1082.graphics.f().s("#333333").ss(1,1,1).p("AluhKIE1jvQDRiHAZgUQAMAGgQAVQgPBSBsFYQALAbAMAcQAjCtArCiIkKBVIiuAJg");
	this.shape_1082.setTransform(413.2,421.4);

	this.shape_1083 = new cjs.Shape();
	this.shape_1083.graphics.f("#FFFFFF").s().p("AluhKIE1jvQDRiHAZgUQAMAGgQAVQgPBSBsFYIAXA3QAjCtArCiIkKBVIiuAJg");
	this.shape_1083.setTransform(413.2,421.4);

	this.shape_1084 = new cjs.Shape();
	this.shape_1084.graphics.f().s("#333333").ss(1,1,1).p("Alyg7IEvj3QDMiIAZgZQALAFgOAVQgGBRBxFPQANAaANAbQAjCtAsCkIkABfIivAIIk1oPg");
	this.shape_1084.setTransform(413.7,427);

	this.shape_1085 = new cjs.Shape();
	this.shape_1085.graphics.f("#FFFFFF").s().p("Alxg6IgBAAIEvj4QDMiIAZgZQALAFgOAVQgGBRBxFOIAaA3QAjCsAsCkIkABfIivAIg");
	this.shape_1085.setTransform(413.7,427);

	this.shape_1086 = new cjs.Shape();
	this.shape_1086.graphics.f().s("#333333").ss(1,1,1).p("Al1grIEoj/QDGiKAZgeQAMAFgNAUQADBPB3FGQAOAbAOAZQAjCuAsCkIj0BpIixAIIlFn+g");
	this.shape_1086.setTransform(414.3,432.6);

	this.shape_1087 = new cjs.Shape();
	this.shape_1087.graphics.f("#FFFFFF").s().p("Al1grIAAAAIEoj/QDGiKAZgeQAMAFgNAUQACBPB4FGIAcA0QAjCuAsCkIj1BpIixAIg");
	this.shape_1087.setTransform(414.3,432.6);

	this.shape_1088 = new cjs.Shape();
	this.shape_1088.graphics.f().s("#333333").ss(1,1,1).p("Al4gbIEgkHQDBiMAZgjQAMAFgMATQAMBNB9E9QAPAbAPAYQAkCvAsClIjqByIixAJIlWnug");
	this.shape_1088.setTransform(414.8,438.2);

	this.shape_1089 = new cjs.Shape();
	this.shape_1089.graphics.f("#FFFFFF").s().p("Al4gcIAAAAIEgkGQDBiMAZgkQAMAGgMATQAMBNB9E9IAeAzQAkCvAsClIjqByIixAIg");
	this.shape_1089.setTransform(414.8,438.2);

	this.shape_1090 = new cjs.Shape();
	this.shape_1090.graphics.f().s("#333333").ss(1,1,1).p("Al7gMIEZkPQC8iNAZgpQAMAFgLATQAVBMCDEzQAQAaAPAaQAlCuAtCmIjfB8IizAIg");
	this.shape_1090.setTransform(415.3,443.7);

	this.shape_1091 = new cjs.Shape();
	this.shape_1091.graphics.f("#FFFFFF").s().p("Al8gMIEZkPQC8iNAZgpQANAFgMATQAWBMCDEzIAfA0QAkCuAuCmIjfB8IizAIg");
	this.shape_1091.setTransform(415.3,443.7);

	this.shape_1092 = new cjs.Shape();
	this.shape_1092.graphics.f().s("#333333").ss(1,1,1).p("Al/ABIESkUQC3iQAZgtQAMAEgKAUQAfBJCJEqQAQAZAQAZQAmCvAtCnIjVCGIizAIg");
	this.shape_1092.setTransform(415.8,449.3);

	this.shape_1093 = new cjs.Shape();
	this.shape_1093.graphics.f("#FFFFFF").s().p("Al/ABIESkUQC3iQAZgtQAMAEgKATQAfBLCJEpIAgAyQAmCvAtCnIjVCGIizAIg");
	this.shape_1093.setTransform(415.8,449.3);

	this.shape_1094 = new cjs.Shape();
	this.shape_1094.graphics.f().s("#333333").ss(1,1,1).p("AmCAQIELkbQCxiSAZgyQANAEgKASQAoBJCPEhQARAYARAYQAmCwAuCoIjKCPIi3AIg");
	this.shape_1094.setTransform(416.4,454.9);

	this.shape_1095 = new cjs.Shape();
	this.shape_1095.graphics.f("#FFFFFF").s().p("AmCARIELkcQCxiRAZgzQANAEgJATQAoBICOEhIAjAwQAlCwAuCpIjJCPIi4AHg");
	this.shape_1095.setTransform(416.4,454.9);

	this.shape_1096 = new cjs.Shape();
	this.shape_1096.graphics.f().s("#333333").ss(1,1,1).p("AmGAgIEEkjQCsiUAZg3QANAEgIASQAxBHCVEXQASAYASAYQAnCwAtCpIi+CZIi5AHImUmvg");
	this.shape_1096.setTransform(416.9,460.4);

	this.shape_1097 = new cjs.Shape();
	this.shape_1097.graphics.f("#FFFFFF").s().p("AmFAgIgBAAIEEkjQCsiUAZg3QANAEgHASQAwBHCVEXIAlAwQAmCwAtCpIi+CZIi5AHg");
	this.shape_1097.setTransform(416.9,460.4);

	this.shape_1098 = new cjs.Shape();
	this.shape_1098.graphics.f().s("#333333").ss(1,1,1).p("AmJAwID9ksQCniUAZg+QANAFgHARQA6BFCbEPQASAXAUAWQAnCyAuCqIi0CiIi5AHImlmeg");
	this.shape_1098.setTransform(417.4,466);

	this.shape_1099 = new cjs.Shape();
	this.shape_1099.graphics.f("#FFFFFF").s().p("AmIAvIgBAAID9kqQCniVAZg+QANAFgHARQA6BFCbEOIAmAvQAnCwAuCrIi0CiIi5AHg");
	this.shape_1099.setTransform(417.4,466);

	this.shape_1100 = new cjs.Shape();
	this.shape_1100.graphics.f().s("#333333").ss(1,1,1).p("AmMA/ID2kzQChiXAZhCQAOAFgGAQQBEBDCfEGQAUAWAUAWQAoCyAuCsIipCrIi6AIIm1mPg");
	this.shape_1100.setTransform(417.9,471.6);

	this.shape_1101 = new cjs.Shape();
	this.shape_1101.graphics.f("#FFFFFF").s().p("AmLA/IgBAAID2kzQChiXAZhCQAOAFgGAQQBEBDCfEGIAoAsQAoCyAuCsIipCrIi6AIg");
	this.shape_1101.setTransform(417.9,471.6);

	this.shape_1102 = new cjs.Shape();
	this.shape_1102.graphics.f().s("#333333").ss(1,1,1).p("AmPBOIDvk6QCeiZAWhHQAOAEgFAQQBOBCClD8QAVAWAVAVQAoCzAuCtIieC0Ii7AIInGl/g");
	this.shape_1102.setTransform(418.4,477.2);

	this.shape_1103 = new cjs.Shape();
	this.shape_1103.graphics.f("#FFFFFF").s().p("AmPBOIAAAAIDvk6QCeiZAWhHQAOAEgFAQQBNBCCmD8IAqArQAnCzAvCtIieC0Ii8AIg");
	this.shape_1103.setTransform(418.4,477.2);

	this.shape_1104 = new cjs.Shape();
	this.shape_1104.graphics.f().s("#333333").ss(1,1,1).p("AmSBeIDnlCQCZibAWhMQAPAEgEAPQBWBACsDzQAVAVAWAVQApCzAuCuIiTC/Ii8AHg");
	this.shape_1104.setTransform(418.9,482.7);

	this.shape_1105 = new cjs.Shape();
	this.shape_1105.graphics.f("#FFFFFF").s().p("AmSBeIDnlCQCZibAWhMQAPAEgEAPQBWBACsDzIArAqQApCzAuCuIiTC/Ii8AHg");
	this.shape_1105.setTransform(418.9,482.7);

	this.shape_1106 = new cjs.Shape();
	this.shape_1106.graphics.f().s("#333333").ss(1,1,1).p("AmWBtIDhlJQCTidAZhRQAMAEgDAOQBgA/CxDqQAXAUAXAUQApC0AvCvIiJDIIi9AIInmlfg");
	this.shape_1106.setTransform(419.4,488.3);

	this.shape_1107 = new cjs.Shape();
	this.shape_1107.graphics.f("#FFFFFF").s().p("AmVBtIgBAAIDhlJQCTidAZhSQAMAFgDAOQBgA/CxDpIAuApQApC0AvCvIiJDIIi9AIg");
	this.shape_1107.setTransform(419.4,488.3);

	this.shape_1108 = new cjs.Shape();
	this.shape_1108.graphics.f().s("#333333").ss(1,1,1).p("AmZB8IDZlRQCPieAYhXQAPAEgCAOQBnA9C3DhQAYATAXAUQAqC1AvCwIh+DRIi+AIIn3lPg");
	this.shape_1108.setTransform(420,493.9);

	this.shape_1109 = new cjs.Shape();
	this.shape_1109.graphics.f("#FFFFFF").s().p("AmYB8IgBAAIDalRQCNieAZhXQAPAEgCAOQBnA9C3DhIAvAnQAqC1AvCwIh+DRIi+AIg");
	this.shape_1109.setTransform(420,493.9);

	this.shape_1110 = new cjs.Shape();
	this.shape_1110.graphics.f().s("#333333").ss(1,1,1).p("AmcCMIDSlZQCJigAYhcQAPAEgBAOQBxA7C9DYQAYASAYATQArC2AvCwIhzDbIi/AIIoHk+g");
	this.shape_1110.setTransform(420.5,499.5);

	this.shape_1111 = new cjs.Shape();
	this.shape_1111.graphics.f("#FFFFFF").s().p("AmcCMIAAAAIDSlZQCJigAYhcQAPAEgBANQBxA8C9DYIAwAkQArC3AvCwIhzDcIi/AHg");
	this.shape_1111.setTransform(420.5,499.5);

	this.shape_1112 = new cjs.Shape();
	this.shape_1112.graphics.f().s("#333333").ss(1,1,1).p("AmfCcIDLlhQCCijAZhgQAPAEAAAMQB7A6DCDPQAZASAaARQAqC3AwCzIhnDkIjBAHIoXktg");
	this.shape_1112.setTransform(421,505);

	this.shape_1113 = new cjs.Shape();
	this.shape_1113.graphics.f("#FFFFFF").s().p("AmfCbIgBAAIDMlgQCCiiAZhhQAPADAAANQB6A6DDDPIAzAjQArC3AvCzIhnDkIjCAHg");
	this.shape_1113.setTransform(421,505);

	this.shape_1114 = new cjs.Shape();
	this.shape_1114.graphics.f().s("#333333").ss(1,1,1).p("AmjCrIDElpQB+ikAZhlQAPADABANQCDA4DJDFQAaARAaARQArC4AxCzIheDuIjBAHIonkdg");
	this.shape_1114.setTransform(421.5,510.6);

	this.shape_1115 = new cjs.Shape();
	this.shape_1115.graphics.f("#FFFFFF").s().p("AmiCrIgBAAIDElpQB+ikAZhlQAPADABANQCDA4DJDFIA0AiQArC4AxCzIheDuIjBAHg");
	this.shape_1115.setTransform(421.5,510.6);

	this.shape_1116 = new cjs.Shape();
	this.shape_1116.graphics.f().s("#333333").ss(1,1,1).p("AmmC6IC9lwQB4ilAZhrQAQADACAMQCMA2DOC9QAbAQAcAQQArC5AxC0IhSD3IjDAIIo3kOg");
	this.shape_1116.setTransform(422,516.2);

	this.shape_1117 = new cjs.Shape();
	this.shape_1117.graphics.f("#FFFFFF").s().p("AmlC6IgBAAIC9lwQB4ilAZhsQAQAEACALQCMA3DOC9IA3AhQArC3AxC1IhSD4IjDAHg");
	this.shape_1117.setTransform(422,516.2);

	this.shape_1118 = new cjs.Shape();
	this.shape_1118.graphics.f().s("#333333").ss(1,1,1).p("AmpDKIC2l4QByioAZhwQAQAEADALQCWA0DUC0QAcAQAcAPQAtC5AwC2IhHEBIjEAHIpIj9g");
	this.shape_1118.setTransform(422.6,521.7);

	this.shape_1119 = new cjs.Shape();
	this.shape_1119.graphics.f("#FFFFFF").s().p("AmpDKIAAAAIC2l4QByioAZhwQARAEACALQCWA0DUC0IA4AfQAtC5AwC2IhIEBIjDAHg");
	this.shape_1119.setTransform(422.6,521.7);

	this.shape_1120 = new cjs.Shape();
	this.shape_1120.graphics.f().s("#333333").ss(1,1,1).p("AmtDZICvl/QBuiqAZh1QAQADAEALQCfAzDaCqQAcAPAdAPQAtC8AyC1Ig9EKIjFAHIpYjtg");
	this.shape_1120.setTransform(423.1,527.3);

	this.shape_1121 = new cjs.Shape();
	this.shape_1121.graphics.f("#FFFFFF").s().p("AmsDZIgBAAICvmAQBuipAZh1QAQADAEALQCfAzDaCqIA5AeQAtC7AyC1Ig9ELIjFAHg");
	this.shape_1121.setTransform(423.1,527.3);

	this.shape_1122 = new cjs.Shape();
	this.shape_1122.graphics.f().s("#333333").ss(1,1,1).p("AmwDoIComHQBoirAZh6QARADAFAKQCoAxDfChQAeAPAeAOQAtC8AyC2IgyEUIjGAHIpojdg");
	this.shape_1122.setTransform(423.6,532.9);

	this.shape_1123 = new cjs.Shape();
	this.shape_1123.graphics.f("#FFFFFF").s().p("AmvDoIgBAAIComHQBoirAZh6QARADAFAKQCoAxDfChIA8AdQAtC8AyC2IgyEUIjGAHg");
	this.shape_1123.setTransform(423.6,532.9);

	this.shape_1124 = new cjs.Shape();
	this.shape_1124.graphics.f().s("#333333").ss(1,1,1).p("AmzD3IChmOQBiitAZiAQARADAGAKQCyAvDlCYQAfAOAeANQAuC+AyC3IgnEdIjHAHIp5jNg");
	this.shape_1124.setTransform(424.1,538.5);

	this.shape_1125 = new cjs.Shape();
	this.shape_1125.graphics.f("#FFFFFF").s().p("AmyD3IgBAAIChmOQBiitAZiAQARAEAGAJQCyAwDlCXIA9AbQAvC+AxC3IgnEdIjHAHg");
	this.shape_1125.setTransform(424.1,538.5);

	this.shape_1126 = new cjs.Shape();
	this.shape_1126.graphics.f().s("#333333").ss(1,1,1).p("Am3EHICamWQBeivAYiFQARADAIAJQC7AuDrCPQAfANAgANQAvC+AyC4IgdEnIjIAHIqJi9g");
	this.shape_1126.setTransform(424.6,544);

	this.shape_1127 = new cjs.Shape();
	this.shape_1127.graphics.f("#FFFFFF").s().p("Am2EHIAAAAICZmWQBeivAYiFQARADAIAJQC7AuDrCPIA/AaQAvC+AyC4IgdEnIjIAHg");
	this.shape_1127.setTransform(424.6,544);

	this.shape_1128 = new cjs.Shape();
	this.shape_1128.graphics.f().s("#333333").ss(1,1,1).p("Am6EXICTmeQBYixAZiKQARADAIAIQDFAtDwCFQAhANAgAMQAvC/AzC5IgSEwIjJAHIqZisg");
	this.shape_1128.setTransform(425.1,549.6);

	this.shape_1129 = new cjs.Shape();
	this.shape_1129.graphics.f("#FFFFFF").s().p("Am5EXIgBAAICTmeQBYixAZiKQARADAIAIQDFAtDwCFIBBAZQAvC/AzC5IgSEwIjJAHg");
	this.shape_1129.setTransform(425.1,549.6);

	this.shape_1130 = new cjs.Shape();
	this.shape_1130.graphics.f().s("#333333").ss(1,1,1).p("Am9EmICMmmQBTizAYiOQASACAJAIQDOArD2B8QAhAMAiALQAwDAAyC6IgHE6IjKAHIqpicg");
	this.shape_1130.setTransform(425.7,555.2);

	this.shape_1131 = new cjs.Shape();
	this.shape_1131.graphics.f("#FFFFFF").s().p("Am8EmIgBAAICMmmQBSizAZiOQARADAKAHQDNArD3B8IBCAYQAxC/AyC7IgHE6IjKAGg");
	this.shape_1131.setTransform(425.7,555.2);

	this.shape_1132 = new cjs.Shape();
	this.shape_1132.graphics.f().s("#333333").ss(1,1,1).p("AnCE1ICEmtQBOi0AYiUQASACAKAIQDXApD9BzQAiALAiAKQAwDBAzC7IAEFEIjLAGIq6iMg");
	this.shape_1132.setTransform(426.4,560.7);

	this.shape_1133 = new cjs.Shape();
	this.shape_1133.graphics.f("#FFFFFF").s().p("AnCE1IAAAAICEmtQBOi0AYiUQASACAKAIQDXApD9BzIBEAVQAwDBAzC7IAEFEIjLAGg");
	this.shape_1133.setTransform(426.4,560.7);

	this.shape_1134 = new cjs.Shape();
	this.shape_1134.graphics.f().s("#333333").ss(1,1,1).p("AnLFFIB+m1QBIi2AYiZQASACAMAGQDgAoECBqQAjAKAjAKQAxDCAzC8IAPFOIjMAGIrKh8g");
	this.shape_1134.setTransform(427.4,566.3);

	this.shape_1135 = new cjs.Shape();
	this.shape_1135.graphics.f("#FFFFFF").s().p("AnKFFIgBAAIB+m1QBIi2AYiaQASADAMAGQDgAoECBqIBGAUQAxDCAzC8IAPFNIjMAGg");
	this.shape_1135.setTransform(427.4,566.3);

	this.shape_1136 = new cjs.Shape();
	this.shape_1136.graphics.f().s("#333333").ss(1,1,1).p("AnTFUIB2m8QBDi5AYieQASADANAGQDpAlEIBhQAkAKAjAJQAyDCA0C+IAZFXIjNAGIrahsg");
	this.shape_1136.setTransform(428.5,571.9);

	this.shape_1137 = new cjs.Shape();
	this.shape_1137.graphics.f("#FFFFFF").s().p("AnTFUIAAAAIB2m8QBDi5AYieQASADANAGQDpAlEIBhIBHATQAzDCAzC+IAZFXIjNAGg");
	this.shape_1137.setTransform(428.5,571.9);

	this.shape_1138 = new cjs.Shape();
	this.shape_1138.graphics.f().s("#333333").ss(1,1,1).p("AncFjIBvnEQA+i6AYijQATACANAFQD1AlELBXQAlAJAlAJQAyDCA0C/IAkFhIjOAGIrqhcg");
	this.shape_1138.setTransform(429.5,577.5);

	this.shape_1139 = new cjs.Shape();
	this.shape_1139.graphics.f("#FFFFFF").s().p("AnbFkIgBAAIBvnFQA+i6AYijQATACANAFQD1AlELBXIBKASQAyDDA0C+IAkFhIjOAGg");
	this.shape_1139.setTransform(429.5,577.5);

	this.shape_1140 = new cjs.Shape();
	this.shape_1140.graphics.f().s("#333333").ss(1,1,1).p("AnlFzIBonMQA4i8AZioQASACAPAFQD+AiERBPQAmAIAmAIQAyDDA1DAIAvFqIjQAGIr6hLg");
	this.shape_1140.setTransform(430.6,583);

	this.shape_1141 = new cjs.Shape();
	this.shape_1141.graphics.f("#FFFFFF").s().p("AnkFzIgBAAIBonMQA5i8AYioQATACAOAFQD+AiERBPIBMAQQAzDDA0DAIAvFqIjQAGg");
	this.shape_1141.setTransform(430.6,583);

	this.shape_1142 = new cjs.Shape();
	this.shape_1142.graphics.f().s("#333333").ss(1,1,1).p("AnuGCIBinUQAzi9AYiuQATADAQAEQEHAgEXBGQAnAHAmAHQAzDFA1DBIA6F0IjRAGIsKg8g");
	this.shape_1142.setTransform(431.7,588.6);

	this.shape_1143 = new cjs.Shape();
	this.shape_1143.graphics.f("#FFFFFF").s().p("AntGCIgBAAIBinTQAyi+AYiuQAUADAPAEQEIAgEXBHIBNANQAzDFA1DBIA5F0IjQAGg");
	this.shape_1143.setTransform(431.7,588.6);

	this.shape_1144 = new cjs.Shape();
	this.shape_1144.graphics.f().s("#333333").ss(1,1,1).p("An2GSIBancQAti/AYizQAUADAQADQERAgEdA8QAnAGAoAGQA0DGA0DCIBFF9IjSAGg");
	this.shape_1144.setTransform(432.7,594.2);

	this.shape_1145 = new cjs.Shape();
	this.shape_1145.graphics.f("#FFFFFF").s().p("An2GSIBancQAti/AYizQAUACAQAEQERAgEdA8IBPAMIBoGIIBFF9IjSAFg");
	this.shape_1145.setTransform(432.7,594.2);

	this.shape_1146 = new cjs.Shape();
	this.shape_1146.graphics.f().s("#333333").ss(1,1,1).p("An/GhIBTnjQAojBAYi4QAUACASADQEaAeEiAzQApAGAoAFQA0DHA1DDIBQGGIjTAGg");
	this.shape_1146.setTransform(433.8,599.7);

	this.shape_1147 = new cjs.Shape();
	this.shape_1147.graphics.f("#FFFFFF").s().p("An/GhIBTnjQAojBAYi4IAmAFQEaAeEiAzIBRALIBpGKIBQGGIjTAGg");
	this.shape_1147.setTransform(433.8,599.7);

	this.shape_1148 = new cjs.Shape();
	this.shape_1148.graphics.f().s("#333333").ss(1,1,1).p("AoIGxIBNnrQAijDAYi9QAUACATADQEjAbEpArQApAFApAFQA1DGA1DFIBbGQIjUAFg");
	this.shape_1148.setTransform(434.8,605.3);

	this.shape_1149 = new cjs.Shape();
	this.shape_1149.graphics.f("#FFFFFF").s().p("AoIGxIBNnrQAijDAYi9QAUACATADQEjAbEpArIBSAKIBqGLIBbGPIjUAGg");
	this.shape_1149.setTransform(434.8,605.3);

	this.shape_1150 = new cjs.Shape();
	this.shape_1150.graphics.f().s("#333333").ss(1,1,1).p("AoQG9IBFnyQAdjFAYjCQAVABATACQEtAbEuAhQAqAEAqAEQA2DIA1DFIBlGaIjUAFg");
	this.shape_1150.setTransform(435.9,611.2);

	this.shape_1151 = new cjs.Shape();
	this.shape_1151.graphics.f("#FFFFFF").s().p("AnLg1QAdjFAYjCIAoADQEtAbEuAhIBUAIIBrGNIBlGaIjUAFItNAGg");
	this.shape_1151.setTransform(435.9,611.2);

	this.shape_1152 = new cjs.Shape();
	this.shape_1152.graphics.f().s("#333333").ss(1,1,1).p("AmrnDILpA6IDcMyIwzAcg");
	this.shape_1152.setTransform(437,617.6);

	this.shape_1153 = new cjs.Shape();
	this.shape_1153.graphics.f("#FFFFFF").s().p("AmrnEILpA7IDcMyIwzAbg");
	this.shape_1153.setTransform(437,617.6);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[]}).to({state:[{t:this.shape_987},{t:this.shape_986}]},14).to({state:[{t:this.shape_989},{t:this.shape_988}]},1).to({state:[{t:this.shape_991},{t:this.shape_990}]},1).to({state:[{t:this.shape_993},{t:this.shape_992}]},1).to({state:[{t:this.shape_995},{t:this.shape_994}]},1).to({state:[{t:this.shape_997},{t:this.shape_996}]},1).to({state:[{t:this.shape_999},{t:this.shape_998}]},1).to({state:[{t:this.shape_1001},{t:this.shape_1000}]},1).to({state:[{t:this.shape_1003},{t:this.shape_1002}]},1).to({state:[{t:this.shape_1005},{t:this.shape_1004}]},1).to({state:[{t:this.shape_1007},{t:this.shape_1006}]},1).to({state:[{t:this.shape_1009},{t:this.shape_1008}]},1).to({state:[{t:this.shape_1011},{t:this.shape_1010}]},1).to({state:[{t:this.shape_1013},{t:this.shape_1012}]},1).to({state:[{t:this.shape_1015},{t:this.shape_1014}]},1).to({state:[{t:this.shape_1017},{t:this.shape_1016}]},1).to({state:[{t:this.shape_1019},{t:this.shape_1018}]},1).to({state:[{t:this.shape_1021},{t:this.shape_1020}]},1).to({state:[{t:this.shape_1023},{t:this.shape_1022}]},1).to({state:[{t:this.shape_1025},{t:this.shape_1024}]},1).to({state:[{t:this.shape_1027},{t:this.shape_1026}]},1).to({state:[{t:this.shape_1029},{t:this.shape_1028}]},1).to({state:[{t:this.shape_1031},{t:this.shape_1030}]},1).to({state:[{t:this.shape_1033},{t:this.shape_1032}]},1).to({state:[{t:this.shape_1035},{t:this.shape_1034}]},1).to({state:[{t:this.shape_1037},{t:this.shape_1036}]},1).to({state:[{t:this.shape_1039},{t:this.shape_1038}]},1).to({state:[{t:this.shape_1041},{t:this.shape_1040}]},1).to({state:[{t:this.shape_1043},{t:this.shape_1042}]},1).to({state:[{t:this.shape_1045},{t:this.shape_1044}]},1).to({state:[{t:this.shape_1047},{t:this.shape_1046}]},1).to({state:[{t:this.shape_1049},{t:this.shape_1048}]},1).to({state:[{t:this.shape_1051},{t:this.shape_1050}]},1).to({state:[{t:this.shape_1053},{t:this.shape_1052}]},1).to({state:[{t:this.shape_1055},{t:this.shape_1054}]},1).to({state:[{t:this.shape_1057},{t:this.shape_1056}]},1).to({state:[{t:this.shape_1059},{t:this.shape_1058}]},1).to({state:[{t:this.shape_1061},{t:this.shape_1060}]},1).to({state:[{t:this.shape_1063},{t:this.shape_1062}]},1).to({state:[{t:this.shape_1065},{t:this.shape_1064}]},1).to({state:[{t:this.shape_1067},{t:this.shape_1066}]},1).to({state:[{t:this.shape_1069},{t:this.shape_1068}]},1).to({state:[{t:this.shape_1071},{t:this.shape_1070}]},1).to({state:[{t:this.shape_1073},{t:this.shape_1072}]},1).to({state:[{t:this.shape_1075},{t:this.shape_1074}]},1).to({state:[{t:this.shape_1077},{t:this.shape_1076}]},1).to({state:[{t:this.shape_1079},{t:this.shape_1078}]},1).to({state:[{t:this.shape_1081},{t:this.shape_1080}]},1).to({state:[{t:this.shape_1083},{t:this.shape_1082}]},1).to({state:[{t:this.shape_1085},{t:this.shape_1084}]},1).to({state:[{t:this.shape_1087},{t:this.shape_1086}]},1).to({state:[{t:this.shape_1089},{t:this.shape_1088}]},1).to({state:[{t:this.shape_1091},{t:this.shape_1090}]},1).to({state:[{t:this.shape_1093},{t:this.shape_1092}]},1).to({state:[{t:this.shape_1095},{t:this.shape_1094}]},1).to({state:[{t:this.shape_1097},{t:this.shape_1096}]},1).to({state:[{t:this.shape_1099},{t:this.shape_1098}]},1).to({state:[{t:this.shape_1101},{t:this.shape_1100}]},1).to({state:[{t:this.shape_1103},{t:this.shape_1102}]},1).to({state:[{t:this.shape_1105},{t:this.shape_1104}]},1).to({state:[{t:this.shape_1107},{t:this.shape_1106}]},1).to({state:[{t:this.shape_1109},{t:this.shape_1108}]},1).to({state:[{t:this.shape_1111},{t:this.shape_1110}]},1).to({state:[{t:this.shape_1113},{t:this.shape_1112}]},1).to({state:[{t:this.shape_1115},{t:this.shape_1114}]},1).to({state:[{t:this.shape_1117},{t:this.shape_1116}]},1).to({state:[{t:this.shape_1119},{t:this.shape_1118}]},1).to({state:[{t:this.shape_1121},{t:this.shape_1120}]},1).to({state:[{t:this.shape_1123},{t:this.shape_1122}]},1).to({state:[{t:this.shape_1125},{t:this.shape_1124}]},1).to({state:[{t:this.shape_1127},{t:this.shape_1126}]},1).to({state:[{t:this.shape_1129},{t:this.shape_1128}]},1).to({state:[{t:this.shape_1131},{t:this.shape_1130}]},1).to({state:[{t:this.shape_1133},{t:this.shape_1132}]},1).to({state:[{t:this.shape_1135},{t:this.shape_1134}]},1).to({state:[{t:this.shape_1137},{t:this.shape_1136}]},1).to({state:[{t:this.shape_1139},{t:this.shape_1138}]},1).to({state:[{t:this.shape_1141},{t:this.shape_1140}]},1).to({state:[{t:this.shape_1143},{t:this.shape_1142}]},1).to({state:[{t:this.shape_1145},{t:this.shape_1144}]},1).to({state:[{t:this.shape_1147},{t:this.shape_1146}]},1).to({state:[{t:this.shape_1149},{t:this.shape_1148}]},1).to({state:[{t:this.shape_1151},{t:this.shape_1150}]},1).to({state:[{t:this.shape_1153},{t:this.shape_1152}]},1).to({state:[]},1).wait(28));

	// 文字
	this.text = new cjs.Text("e档案自主管理帮你解决", "18px 'Arial'", "#666666");
	this.text.textAlign = "center";
	this.text.lineHeight = 20;
	this.text.setTransform(244.4,143.1);

	this.text_1 = new cjs.Text("文件又多又乱怎么办", "40px 'Arial'", "#0066FF");
	this.text_1.textAlign = "center";
	this.text_1.lineHeight = 42;
	this.text_1.setTransform(244.4,78.1);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.text_1},{t:this.text}]}).wait(126));

	// bg
	this.shape_1154 = new cjs.Shape();
	this.shape_1154.graphics.f("#CCCCCC").s().p("A0nGaImQkeIqoAAIAAoVMBK+AAAIAAJQI2+AAIiqDjg");
	this.shape_1154.setTransform(240,679.3);

	this.instance_5 = new lib.FlashAICB();
	this.instance_5.setTransform(0,156.1,0.579,0.579);

	this.instance_6 = new lib.FlashAICB_1();
	this.instance_6.setTransform(361.5,166.2,0.541,0.541);

	this.shape_1155 = new cjs.Shape();
	this.shape_1155.graphics.f("#F4F7FF").s().p("EglfA4QMAAAhwfMBK+AAAMAAABwfg");
	this.shape_1155.setTransform(240,360);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_1155},{t:this.instance_6},{t:this.instance_5},{t:this.shape_1154}]}).wait(126));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(240,360,480,720.3);

})(lib = lib||{}, images = images||{}, createjs = createjs||{}, ss = ss||{});
var lib, images, createjs, ss;