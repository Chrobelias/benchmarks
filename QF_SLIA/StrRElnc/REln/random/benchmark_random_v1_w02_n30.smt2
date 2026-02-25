(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.* (re.union (re.* (str.to_re "5")) (re.range "7" "9"))))))

(assert (< (+ (* 6 (str.len x)) (* (- 4) (str.to_int x))) 61))

(check-sat)