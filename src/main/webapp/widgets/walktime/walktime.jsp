<div class="cc-container-widget" id="cc-widget-walktime">
	<div class="cc-widget-title">
		<h2>Walk Time</h2>
	</div>
	<!-- MAIN VIEW -->
	<div class="cc-widget-main" id="walktime_main" style="display:none;">

		<p>
			Select start and finish points for approximate distance and walking time. Click map for a better view.
		</p>

		<form>
			<p>
				<select id="walktime_startpoint">
					<option value="0">Start</option>
				</select>
			</p>

			<p>
				<select id="walktime_endpoint">
					<option value="0">End</option>
				</select>
			</p>
		</form>

		<p id="walktime_answer">
			<span id="walktime_response">
				<span id="walktime_distance_text"></span> meters (<span id="walktime_minutes_text"></span> minutes)
			</span>
		</p>

		<a class="walktime_item_link" id="walktime_map_link" href="#"><img id="walktime_googleimg" src="" alt="Small Google map image for selected location"></a>
	</div>
	<div class="cc-widget-footer">
		<a class="walktime_item_link" id="walktime_footermap_link" href="#">&raquo; View larger map</a>
	</div>
</div>
