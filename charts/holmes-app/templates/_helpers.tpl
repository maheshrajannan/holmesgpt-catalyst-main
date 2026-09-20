{{- define "holmes-sre.name" -}}holmes-investigator{{- end -}}

{{- define "holmes-sre.labels" -}}
app.kubernetes.io/name: {{ include "holmes-sre.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}
