(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (str.to_re "41") (re.++ (re.+ (str.to_re "270")) (re.range "4" "9"))))))

(assert (<= (+ (* 2 (str.len x)) (* 3 (str.to_int x))) 83))

(check-sat)