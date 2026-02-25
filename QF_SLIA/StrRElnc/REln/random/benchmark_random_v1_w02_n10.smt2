(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (re.range "2" "7") (re.range "0" "6")))))

(assert (>= (* (- 5) (str.len x)) 2))
(assert (<= (* (- 2) (str.to_int x)) 89))

(check-sat)