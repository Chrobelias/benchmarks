(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.+ (re.union (str.to_re "61") (re.union (str.to_re "34") (str.to_re "519"))))))
(assert (str.in_re x (re.++ (re.* (re.range "2" "4")) (re.union (re.* (re.range "0" "7")) (str.to_re "330")))))

(assert (< (+ (* (- 9) (str.len x)) (* 8 (str.to_int y))) 41))

(check-sat)