(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.++ (re.+ (re.range "1" "5")) (str.to_re "305")) (re.+ (str.to_re "639")))))

(assert (<= (+ (* 7 (str.len x)) (* 2 (str.to_int x))) 62))

(check-sat)