{{- define "example-chart.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "example-chart.labels" -}}
app.kubernetes.io/name: example-chart
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{- define "example-chart.selectorLabels" -}}
app.kubernetes.io/name: example-chart
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
