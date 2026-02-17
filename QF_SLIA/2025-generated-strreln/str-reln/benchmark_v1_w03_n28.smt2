(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "84") (re.* (re.* (re.range "3" "6"))))))

(assert (>= (+ (* 9 (str.len x)) (* (- 4) (str.to_int x))) 95))
(assert (<= (* (- 10) (str.len x)) 23))

(check-sat)