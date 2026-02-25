(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.++ (re.range "5" "7") (re.+ (str.to_re "611"))) (str.to_re "9"))))

(assert (> (* (- 7) (str.len x)) 29))
(assert (>= (* 8 (str.len x)) 71))
(assert (<= (* 5 (str.to_int x)) 9))

(check-sat)