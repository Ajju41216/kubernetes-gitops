# this file keeps information about the funcations. 

{{- define "voting-lab.name" -}}
voting-test
{{- end }}

{{- define "voting-lab.fullname" -}}
{{ .Release.Name }}-voting-test
{{- end }}

{{- define "voting-lab.labels" -}}
app.kubernetes.io/name: {{ include "voting-lab.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}