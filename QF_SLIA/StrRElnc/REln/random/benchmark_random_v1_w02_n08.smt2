(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.* (str.to_re "47")) (re.range "7" "9"))))

(assert (< (+ (* (- 4) (str.len x)) (* (- 2) (str.to_int x))) 64))

(check-sat)