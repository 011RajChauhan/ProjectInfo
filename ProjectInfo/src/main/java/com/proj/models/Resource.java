package com.proj.models;

import java.util.Arrays;

public class Resource {
		private int resourceId;
		private String name;
		private String type;
		private String unitOfMeasure;
		private int cost;
		private String[] indicators;
		private String notes;
		
		public String getNotes() {
			return notes;
		}
		public void setNotes(String notes) {
			this.notes = notes;
		}
		public String[] getIndicators() {
			return indicators;
		}
		public void setIndicators(String[] indicators) {
			this.indicators = indicators;
		}
		public int getResourceId() {
			return resourceId;
		}
		public void setResourceId(int resourceId) {
			this.resourceId = resourceId;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getType() {
			return type;
		}
		public void setType(String type) {
			this.type = type;
		}
		public int getCost() {
			return cost;
		}
		public void setCost(int cost) {
			this.cost = cost;
		}
		public String getUnitOfMeasure() {
			return unitOfMeasure;
		}
		public void setUnitOfMeasure(String unitOfMeasure) {
			this.unitOfMeasure = unitOfMeasure;
		}
		@Override
		public String toString() {
			return "Resource [resourceId=" + resourceId + ", name=" + name + ", type=" + type + ", cost=" + cost
					+ ", unitOfMeasure=" + unitOfMeasure + ", indicators=" + Arrays.toString(indicators) + ", notes="
					+ notes + "]";
		}
		
		
		
}
