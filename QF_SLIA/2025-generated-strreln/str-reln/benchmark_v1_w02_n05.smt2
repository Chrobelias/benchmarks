(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.++ (str.to_re "146") (re.+ (str.to_re "49"))))))

(assert (= (+ (str.len x) (* 10 (str.to_int x))) 49))

(check-sat)