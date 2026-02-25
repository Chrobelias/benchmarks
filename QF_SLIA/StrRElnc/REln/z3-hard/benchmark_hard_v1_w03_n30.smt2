(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.* (re.++ (re.range "4" "6") (str.to_re "15"))))))

(assert (>= (+ (* 2 (str.len x)) (* (- 8) (str.to_int x))) 79))
(assert (>= (* 8 (str.to_int x)) 8))

(check-sat)